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
        
    # remove the dummy numpy array created in the beginning
    data_set = data_set[:,1:]
    print(data_set.dtype)
    print(len(data_set[0]))
    print(data_set)

    
    # standardlize the data_set
    scaler = StandardScaler()
    scaler.fit(data_set)
    data_set = scaler.transform(data_set)
    
    # apply k-means clustering
    kmeans = KMeans(n_clusters=15)
    kmeans.fit(data_set)
    centroids = kmeans.cluster_centers_
    #print(centroids)
    result = kmeans.labels_
    print(result)
    print(len(result))

    # store the result into our database
    store_clustering_result(result)

def store_clustering_result(result):
    for onsen_inn, category in zip(OnsenInn.objects.all(), result):       

        if onsen_inn.inn_id < 6:
            print("category(before): {0}, {1}".format(onsen_inn.inn_name, onsen_inn.category))
        onsen_inn.category =  category        
        onsen_inn.save()
        if onsen_inn.inn_id < 6:
            print("category(after): {0}, {1}".format(onsen_inn.inn_name, onsen_inn.category))

    


if __name__ == "__main__":

    main()


