import os
import sys
import matplotlib.pyplot as plt
import numpy as np
from sklearn.cluster import KMeans

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
    data_set = []
    onsen_inns = OnsenInn.objects.all()
    for entry in data_list:
        data_set.append(onsen_inns.values_list(entry))

    data_set = np.array(data_set, dtype=np.float)
    #data_set = np.array(data_set)
    data_set = data_set.transpose()
    data_set = data_set[0]
    print(data_set.dtype)
    #print(data_set)
    # remove nan values from the data_set 
    data_set = data_set[:, ~np.isnan(data_set).any(axis=0)]
    
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
