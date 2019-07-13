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
    data_set = np.empty([len(onsen_inns), 1])
    #data_set = data_set.reshape(-1, 1)
    for entry in data_list:        
        data_column = np.array(onsen_inns.values_list(entry), np.float)
        #data_column = data_column.transpose()
        #print(data_column)
        # remove nan values
        #print(data_column)
        col_mean = np.nanmean(data_column, axis=0)
        inds = np.where(np.isnan(data_column))
        data_column[inds] = np.take(col_mean, inds[1])
        #data_column = data_column[~np.isnan(data_column)].reshape(-1, 1)
        #print(data_column)
        # normalization
        #data_column = np.reshape(data_column, -1, 1)
        #print(data_column)
        data_column = normalize(data_column)
        #print(data_column)
        #data_set = np.column_stack((data_set, data_column))  
        #data_set = np.concatenate((data_set.reshape(-1, 1), data_column.reshape(-1, 1)), axis=1)  
        data_set = np.concatenate((data_set, data_column), axis=1)  
        #data_set.append(data_set, data_column, axis=1)  
        
    data_set = data_set[:,1:]
    #data_set = np.array(data_set, dtype=np.float)
    #data_set = np.array(data_set, dtype=np.int)
    #data_set = np.array(data_set)
    #data_set = data_set.transpose()
    #data_set = data_set[0]
    print(data_set.dtype)
    print(data_set)
    # remove nan values from the data_set 
    #data_set = data_set[:, ~np.isnan(data_set).any(axis=0)]
    
    # standardlize the data_set
    '''scaler = StandardScaler()
    scaler.fit(data_set)
    data_set = scaler.transform(data_set)'''
    
    #print(data_set[0])
    # apply k-means clustering
    '''kmeans = KMeans(n_clusters=15)
    kmeans.fit(data_set)
    centroids = kmeans.cluster_centers_
    #print(centroids)
    result = kmeans.labels_
    print(result)
    print(len(result))

    # store the result into our database
    store_clustering_result(result)'''

def store_clustering_result(result):
    for onsen_inn, category in zip(OnsenInn.objects.all(), result):       

        if onsen_inn.inn_id < 6:
            print("category(before): {0}, {1}".format(onsen_inn.inn_name, onsen_inn.category))
        onsen_inn.category =  category        
        onsen_inn.save()
        if onsen_inn.inn_id < 6:
            print("category(after): {0}, {1}".format(onsen_inn.inn_name, onsen_inn.category))

    


if __name__ == "__main__":

    #main()
    #list = (1, 1)
    #a = np.array(list)
    #print(a)
    #print(a.reshape(-1, 1))
    #a = np.array([[1],[1]])
    '''b = np.array([[2],[2],[2]])
    a = []
    a = np.array(a)
    a = np.empty([3,1])
    print(a)
    print(b)
    b = normalize(b)
    c = np.append(a, b, axis=1)
    print(b)
    #print(np.column_stack((a, b)))
    #print(np.concatenate((a.reshape(-1,1), b.reshape(-1,1)), axis=1))
    print(c)
    d = c[:,1:]
    print(d)'''
    
    '''enc = OneHotEncoder(handle_unknown='ignore')
    #X = [['mac', 1], ['windows', 2], ['linux', 3]]
    X = [['mac'], ['windows'], ['linux'], ['linux'], ['mac']]
    enc.fit(X)
    print(enc.categories_)
    print(enc.transform([['mac'], ['windows']]).toarray())'''

    onsen_inns = OnsenInn.objects.all()
    # create the nature_of_onsen column
    print(onsen_inns.values_list("onsen__nature_of_onsen"))
    data_column = np.array(onsen_inns.values_list("onsen__nature_of_onsen"))
    print(data_column)

    # transform the nature_of_onsen column into one-hot vector                       
    enc = OneHotEncoder(handle_unknown='ignore')
    enc.fit(data_column)
    print(enc.categories_)
    #data_column = enc.transform(data_column).toarray()
    data_column = enc.transform([["塩化物泉"], ["放射能泉"]]).toarray()
    print(data_column)
    #a = ["エステ（有料）", "マッサージ（有料）", "将棋（有料）"]
    a = ["エステ（有料）", "マッサージ（有料）", "将棋（有料）", "test"]
    #b = ["囲碁（有料）", "エステ（有料）"]
    b = ["囲碁（有料）", "エステ（有料）", "test", "test"]
    c = ["マージャン（有料）", "マッサージ（有料）", "リフレクソロジー", "エステ（有料）"]
    #test_list = [["エステ（有料）", "マッサージ（有料）", "将棋（有料）"],
    #["囲碁（有料）", "エステ（有料）"],
    #             ["マージャン（有料）", "マッサージ（有料）", "リフレクソロジー", "エステ（有料）"]]
    #test_list = [a, b, c]

    # create the nature_of_onsen column
    #data_column = np.array(np.asarray(test_list[0]), np.asarray(test_list[1]), np.asarray(test_list[2]))
    data_column = np.array([a, b, c])
    #data_column = np.array([a, b, c])
    #data_column = np.array(test_list)
    print(data_column)
    data_column = data_column.reshape(1, -1)
    #Print(Data_column)
    # transform the nature_of_onsen column into one-hot vector 

    #print(data_column)
    enc = OneHotEncoder(handle_unknown='ignore')
    enc.fit(data_column)
    print(enc.categories_)

    #data_column = enc.transform(np.array([['マージャン（有料）', 'マッサージ（有料）', 'test', 'test'], ['エステ（有料）', 'マッサージ（有料）', '将棋（有料）'], ["test", "test", "test", "test"]]).reshape(1, -1)).toarray()
    data_column = enc.transform(data_column).toarray()
    print(data_column)
                              

