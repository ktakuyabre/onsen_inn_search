import os
import sys
import matplotlib.pyplot as plt
import numpy as np
from sklearn.cluster import KMeans
from sklearn.preprocessing import StandardScaler, normalize, OneHotEncoder

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

from onsen_inns.models import Onsen, OnsenInn

from sklearn.datasets.samples_generator import make_blobs


data_list = ["inn_min_price", "review_room", "review_bath", "review_breakfast", "review_dinner", "review_service", "review_cleaness", "rooms_total", "baths_total", "free_wifi", "convenience_store", "hand_towel", "dental_amenities", "bath_towel", "shampoo", "conditioner", "body_wash", "bar_soap", "yukata", "pajamas", "bathrobe", "hairdryer", "duvet", "razor", "shower_cap", "cotton_swab", "onsui_toilet", "hair_brush"]

def main():
    # data processing

    # fetch data from our database and convert it into numpy array
    onsen_inns = OnsenInn.objects.all()

    # create a dummy numpy array to make it possible to cocatanate
    data_set = np.empty([len(onsen_inns), 1])
    for entry in data_list:        
        data_column = np.array(onsen_inns.values_list(entry), np.float)

        # replace nan values with column mean
        col_mean = np.nanmean(data_column, axis=0)
        inds = np.where(np.isnan(data_column))
        data_column[inds] = np.take(col_mean, inds[1])

        # normalization
        data_column = normalize(data_column)

        # concatenate data_set and data_column
        data_set = np.concatenate((data_set, data_column), axis=1)  
        
    # create the nature_of_onsen column
    data_column = np.array(onsen_inns.values_list("onsen__nature_of_onsen"))

    # transform the nature_of_onsen column into one-hot encoded numpy arrays
    enc = OneHotEncoder(handle_unknown='ignore')
    enc.fit(data_column)
    data_column = enc.transform(data_column).toarray()

    # concatenate the transformed one-hot encoded numpys arrays with data_set
    data_set = np.concatenate((data_set, data_column), axis=1)  

    # create the service_leisure column
    data_column = np.array(onsen_inns.values_list("service_leisure", flat=True))
    
    # transform the service_leisure column into one-hot encoded numpy arrays
    enc = OneHotEncoder(handle_unknown='ignore')
    enc.fit(data_column)
    data_column = enc.transform(data_column).toarray()
    print(data_column)

  # create bow_vec and word2id from the service_leisure column
    '''data_column = onsen_inns.values_list("service_leisure", flat=True)
    print(data_column)
    service_leisure_bow_vec, service_leisure_word2id = bowVectorizer(data_column)
    print(service_leisure_bow_vec)
    print(service_leisure_word2id)
    print(len(service_leisure_word2id))
    # concatenate the service_leisure_bow_vec  with data_set
    data_set = np.concatenate((data_set, service_leisure_bow_vec), axis=1)  '''
        
    # remove the dummy numpy array created in the beginning
    data_set = data_set[:,1:]
    print(data_set.dtype)
    print(len(data_set[0]))
    print(data_set)

    
    # standardlize the data_set
    scaler = StandardScaler()
    scaler.fit(data_set)
    data_set = scaler.transform(data_set)

    # apply kmeans clustering, k = 1 ~ 30, using Elbow Method to evaluate each result at each k
    sse = {}
    for k in range(18, 19):
        kmeans = KMeans(n_clusters=k, random_state = 0)
        #kmeans.fit(data_set)
        clusters = kmeans.fit_predict(data_set)
        sse[k] = kmeans.inertia_    
        centroids = kmeans.cluster_centers_
        #print(centroids)
        result = kmeans.labels_
        print(result)
        print(len(result))
    
    for i, centroid in enumerate(centroids):
        print("category ",i, centroid)

    #plotSseValues("cluster_sse_values_2.pdf", sse)
    # store the result into our database
    #store_clustering_result(result)

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

if __name__ == "__main__":

    main()


