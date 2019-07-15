import os
import sys
import matplotlib.pyplot as plt
import numpy as np
from sklearn.cluster import KMeans
from sklearn.preprocessing import StandardScaler, normalize, OneHotEncoder
from sklearn import decomposition
import csv

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

from onsen_inns.models import Onsen, OnsenInn

from sklearn.datasets.samples_generator import make_blobs


data_list = ["inn_min_price", "review_room", "review_bath", "review_breakfast", "review_dinner", "review_service", "review_cleaness", "rooms_total", "baths_total", "free_wifi", "convenience_store", "hand_towel", "body_wash", "hairdryer", "onsui_toilet", "dental_amenities", "bar_soap", "duvet", "hair_brush", "bath_towel", "yukata", "razor", "shampoo", "pajamas", "shower_cap", "conditioner", "bathrobe", "cotton_swab"]

def main():
    # data processing

    # fetch data from our database and convert it into numpy array
    onsen_inns = OnsenInn.objects.all()

    # create a dummy numpy array to make it possible to cocatanate
    data_set = np.empty([len(onsen_inns), 1])
    #print("initial", data_set)
    for entry in data_list:        
        data_column = np.array(onsen_inns.values_list(entry), np.float)

        # replace nan values with column mean
        col_mean = np.nanmean(data_column, axis=0)
        inds = np.where(np.isnan(data_column))
        data_column[inds] = np.take(col_mean, inds[1])

        # normalization
        #print("before normalization", data_column)
        data_column = normalize(data_column)
        #print("after normalization", data_column)

        # concatenate data_set and data_column
        data_set = np.concatenate((data_set, data_column), axis=1)  
        
    # create the nature_of_onsen column
    data_column = np.array(onsen_inns.values_list("onsen__nature_of_onsen"))

    # transform the nature_of_onsen column into one-hot encoded numpy arrays
    '''enc = OneHotEncoder(handle_unknown='ignore')
    enc.fit(data_column)
    data_column = enc.transform(data_column).toarray()'''

    # concatenate the transformed one-hot encoded numpys arrays with data_set
    #data_set = np.concatenate((data_set, data_column), axis=1)  

    # create bow_vec and word2id from the nature_of_onsen column
    nature_of_onsen_bow_vec, nature_of_onsen_word2id = bowVectorizer(data_column)
    # concatenate the nature_of_onsen_bow_vec with data_set
    data_set = np.concatenate((data_set, nature_of_onsen_bow_vec), axis=1)  

    # create the service_leisure column
    data_column = np.array(onsen_inns.values_list("service_leisure", flat=True))
    
    # transform the service_leisure column into one-hot encoded numpy arrays
    '''enc = OneHotEncoder(handle_unknown='ignore')
    enc.fit(data_column)
    data_column = enc.transform(data_column).toarray()
    print(data_column)'''

    # create bow_vec and word2id from the service_leisure column
    data_column = onsen_inns.values_list("service_leisure", flat=True)
    print(data_column)
    service_leisure_bow_vec, service_leisure_word2id = bowVectorizer(data_column)
    #print(service_leisure_bow_vec)
    
    print(len(nature_of_onsen_word2id))
    print(nature_of_onsen_word2id)
    print(len(service_leisure_word2id))
    print(service_leisure_word2id)
    # concatenate the service_leisure_bow_vec with data_set
    data_set = np.concatenate((data_set, service_leisure_bow_vec), axis=1)  
        
    # remove the dummy numpy array created in the beginning
    data_set = data_set[:,1:]
    print(data_set.dtype)
    print(len(data_set[0]))
    #print(data_set)
    print("test", data_set[0])

    
    # standardlize the data_set
    scaler = StandardScaler()
    scaler.fit(data_set)
    data_set = scaler.transform(data_set)
    print("after standarlizing", data_set[0])

    # apply kmeans clustering, k = 1 ~ 30, using Elbow Method to evaluate each result at each k
    sse = {}
    for k in range(11, 12):
        kmeans = KMeans(n_clusters=k, random_state = 0)
        #kmeans.fit(data_set)
        clusters = kmeans.fit_predict(data_set)
        sse[k] = kmeans.inertia_    
        centroids = kmeans.cluster_centers_
        #print(centroids)
        result = kmeans.labels_
        #print(result)
        #print(len(result))

    #plotSseValues("cluster_sse_values.pdf", sse)
    # store the result into our database
    store_clustering_result(result)

    # bring cluster centers back to original scale and show them
    #centroids = scaler.inverse_transform(centroids)
    '''for centroid in centroids:
        print(centroid)'''

    # bring cluster centroids back to original scale and show them
    clustered_original_vectors = []
    for k in range(11):
        clustered_original_vectors.append(getClusteredVectors(k, nature_of_onsen_word2id, service_leisure_word2id))

    centroids = lambda inp: [[sum(m)/float(len(m)) for m in zip(*l)] for l in inp]
    
    centroids_list = []
    for i, centroid in enumerate(centroids(clustered_original_vectors)):
        print("category ", i, centroid)
        centroids_list.append([i]+centroid)
        

    #fieldnames = data_list+list(nature_of_onsen_word2id.keys())+list(service_leisure_word2id.keys()),
    fieldnames = ["category"]
    fieldnames = fieldnames + data_list
    for key in nature_of_onsen_word2id.keys():
        fieldnames.append(key)
    for key in service_leisure_word2id.keys():
        fieldnames.append(key)
    print(fieldnames)
    writeToCsv("clustering_onsen_inns_result.csv", fieldnames, centroids_list)

def store_clustering_result(result):
    for onsen_inn, category in zip(OnsenInn.objects.all(), result):       

        if onsen_inn.inn_id < 6:
            print("category(before): {0}, {1}".format(onsen_inn.inn_name, onsen_inn.category))
        onsen_inn.category =  category        
        onsen_inn.save()
        if onsen_inn.inn_id < 6:
            print("category(after): {0}, {1}".format(onsen_inn.inn_name, onsen_inn.category))

def bowVectorizer(preprocessed_docs):

    word2id = {}
    for tokens in preprocessed_docs:
        for token in tokens:
            if token not in word2id:
                word2id[token] = len(word2id)
            else:
                continue

    bow_vec = []
    for tokens in preprocessed_docs:
        bow = [0] * len(word2id)
        for token in tokens:
            try:
                bow[word2id[token]] += 1
            except:
                pass
        bow_vec.append(bow)

    return bow_vec, word2id

def plotSseValues(filename, sse):
    # plot the sse values 
    plt.figure()
    plt.plot(list(sse.keys()), list(sse.values()))
    plt.xlabel("Number of clusters")
    plt.ylabel("SSE")
    plt.show()
    plt.savefig(filename)

def getClusteredVectors(k, nature_of_onsen_word2id, service_leisure_word2id):
    # fetch data from our database and convert it into numpy array
    onsen_inns = OnsenInn.objects.filter(category=k)

    # create a dummy numpy array to make it possible to cocatanate
    data_set = np.empty([len(onsen_inns), 1])

    for entry in data_list:        
        data_column = np.array(onsen_inns.values_list(entry), np.float)

        # replace nan values with column mean
        col_mean = np.nanmean(data_column, axis=0)
        inds = np.where(np.isnan(data_column))
        data_column[inds] = np.take(col_mean, inds[1])

        # concatenate data_set and data_column
        data_set = np.concatenate((data_set, data_column), axis=1)  

    # create the nature_of_onsen column
    data_column = np.array(onsen_inns.values_list("onsen__nature_of_onsen"))

    nature_of_onsen_bow_vec = onlyBowVectorizer(nature_of_onsen_word2id, data_column)

    # concatenate the transformed one-hot encoded numpys arrays with data_set
    data_set = np.concatenate((data_set, nature_of_onsen_bow_vec), axis=1)  

    # create the service_leisure column
    data_column = np.array(onsen_inns.values_list("service_leisure", flat=True))
    service_leisure_bow_vec = onlyBowVectorizer(service_leisure_word2id, data_column)

    # concatenate the service_leisure_bow_vec  with data_set
    data_set = np.concatenate((data_set, service_leisure_bow_vec), axis=1)  

    # remove the dummy numpy array created in the beginning
    data_set = data_set[:,1:]
    print(data_set.dtype)
    print(len(data_set[0]))
    #print(data_set)
    print("test", data_set[0])

    return data_set

def onlyBowVectorizer(word2id, preprocessed_docs):
    bow_vec = []
    for tokens in preprocessed_docs:
        bow = [0] * len(word2id)
        for token in tokens:
            try:
                bow[word2id[token]] += 1
            except:
                pass
        bow_vec.append(bow)
    return bow_vec

def writeToCsv(filename, fieldnames, data_list):
    with open(filename, mode='w') as onsen_inn_data:
        onsen_inn_data_writer = csv.writer(onsen_inn_data, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
        #fieldnames = ['inn_name', 'reviews']
        writer = csv.DictWriter(onsen_inn_data, fieldnames=fieldnames)

        writer.writeheader()
        for entry in data_list:
            onsen_inn_data_writer.writerow(entry)

def readFromCsv(filepath):
    onsen_inn_data = []
    with open(filepath, mode='r') as onsen_inn_data:
        csv_reader = csv.DictReader(onsen_inn_data)
        line_count = 0
        for row in csv_reader:
            if line_count == 0:
                line_count += 1
            #reviews.append(row["reviews"])
            line_count += 1
    return onsen_inn_data

if __name__ == "__main__":

    main()


