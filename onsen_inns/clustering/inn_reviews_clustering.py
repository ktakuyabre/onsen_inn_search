import os
import sys, getopt
import urllib.request
from bs4 import BeautifulSoup
from xml.dom.minidom import parseString
import MeCab
import csv
import nltk
import numpy as np
import pandas as pd
from numpy import dot
from numpy.linalg import norm
from nltk.metrics import jaccard_distance
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt
import random
import gensim
from gensim import corpora
import pyLDAvis.gensim
import collections


jp_stop = []
    
def main():

    #Preprocessing
    path = "stop_words.txt"
    jp_stop = create_stopwords(path)

    inn_names, reviews = readFromCsv("jaran_inn_reviews.csv")
    print("Total reviews = ", len(reviews))
    preprocessed_reviews = [preprocessing_text(text) for text in reviews]

    bow_vec, word2id = bowVectorizer(preprocessed_reviews)
    #print(bow_vec)
    #print(word2id.items())

    '''tfidf_vector, word2id = tfidf_vectorizer(preprocessed_reviews)
    print(tfidf_vector)
    print(word2id.items())'''

    # Select 10 reviews randomly

    selected_inn_names = []
    selected_reviews = []
    selected_bow_vec = []
    random_numbers = []

    for x in range(10):
        random_number = random.randint(0,len(reviews))
        random_numbers.append(random_number)
        selected_inn_names.append(inn_names[random_number])
        selected_reviews.append(set(reviews[random_number]))
        selected_bow_vec.append(bow_vec[random_number])
        

    '''#Assignment 1
    #Set based similarity 
    
    for i in range(10):
        for j in range(10):
            print("jaccard(" + selected_inn_names[i] + ", " + selected_inn_names[j] + ") =", 1 - jaccard_distance(selected_reviews[i], selected_reviews[j]))
            print("dice(" + selected_inn_names[i] + ", " + selected_inn_names[j] + ") =", 1 - dice_similarity(selected_reviews[i], selected_reviews[j]))
            print("simpson(" + selected_inn_names[i] + ", " + selected_inn_names[j] + ") =", 1 - simpson_similarity(selected_reviews[i], selected_reviews[j]))

    #Vector-based similarity

    for i in range(10):
        for j in range(10):
            print("euclidean_distance(" + selected_inn_names[i] + ", " + selected_inn_names[j] + ") =", 1 - euclidean_distance(selected_bow_vec[i], selected_bow_vec[j]))
            print("cosine_similarity(" + selected_inn_names[i] + ", " + selected_inn_names[j] + ") =", 1 - cosine_similarity(selected_bow_vec[i], selected_bow_vec[j]))'''

    '''#Assignment 2

    # define the vectorizer
    #vectorizer = TfidfVectorizer(max_features=200, token_pattern=u'(?u)\\b\\w)
    #vectorizer = TfidfVectorizer()

    # fit
    #tf_idf = vectorizer.fit_transform(preprocess_documents(doｃs)[0])

    # K-means setting tmp
    #num_clusters = 8
    #km = KMeans(n_clusters=num_clusters, random_state = 0)
    # kmeans k = 1 ~ 10, using Elbow Method to evaluate each result at each k
    sse = {}
    for k in range(1, 10):
        km = KMeans(n_clusters=k, random_state = 0)
        clusters = km.fit_predict(bow_vec)
        #data["clusters"] = km.labels_
        sse[k] = km.inertia_
    # fit
        for doc, cls in zip(inn_names, clusters):
            print("k = ", k)
            print(cls,doc)

    # plot the sse values 
    plt.figure()
    plt.plot(list(sse.keys()), list(sse.values()))
    plt.xlabel("Number of clusters")
    plt.ylabel("SSE")
    plt.show()
    plt.savefig('kmeans_sse_values_2.pdf')'''

    
    #Assignment 3
    
    # construct the 
    # build the dictionary
    
    dictionary = corpora.Dictionary(preprocessed_reviews)
    corpus_ = [dictionary.doc2bow(doc) for doc in preprocessed_reviews]
    k_list = [10, 20, 30]
    for k in k_list:
        ldamodel = gensim.models.ldamodel.LdaModel(corpus=corpus_,
                                           num_topics=20,
                                           id2word=dictionary,
                                           alpha=0.1,                 # optional LDA hyperparameter alpha
                                           eta=0.1,                   # optional LDA hyperparameter beta
                                           #minimum_probability=0.0    # optional the lower bound of the topic/word generative probability
                                          )    

    # the top num_words of words for each topic (topic ID, the word generative probability for the topic).

        #topics = ldamodel.print_topics(num_words=15)
        topics = ldamodel.print_topics(num_words=k)

        print("k = ", k)
        for topic in topics:
            print(topic)
    
    # for each document, show the probabilities of topics which beyond the minimum_probability [(topic ID, probability)]

        for n,item in enumerate(corpus_[:10]):
            print("document ID "+str(n)+":" ,end="")
            print(ldamodel.get_document_topics(item))

    # the categories of documents
    #categories = [corpus.categories(fileid) for fileid in corpus.fileids()]

        for n in random_numbers:

# nth document's topic distribution
            print(ldamodel.get_document_topics(corpus_[n]))

# nth document's category
            print(inn_names[n])

# show the original document
            print(" ".join(reviews[n]))

# visualization
        lda_display = pyLDAvis.gensim.prepare(ldamodel, corpus_, dictionary, sort_topics=False)
        img_name = 'assignment_3_output_' + str(k) + '.pdf'

        pyLDAvis.save_html(lda_display, img_name)


    '''bow_vec, word2id = bowVectorizer(preprocessed_reviews)

    print(bow_vec)
    word2id.items()'''

def create_stopwords(filepath):
    stop_words = []
    for w in open(filepath, "r"):
        w = w.replace('\n','')
        if len(w) > 0:
          stop_words.append(w)
    return stop_words    

def readFromCsv(filepath):
    inn_names = []
    reviews = []
    with open(filepath, mode='r') as jaran_inn_reviews:
        csv_reader = csv.DictReader(jaran_inn_reviews)
        line_count = 0
        for row in csv_reader:
            if line_count == 0:
                line_count += 1
            inn_names.append(row["inn_name"])
            reviews.append(row["reviews"])
            line_count += 1
    return inn_names, reviews

def preprocessing_text(text):
    text = removeBadChars(text)
    tokens = jaranStrParser(text)
    tokens = [removeStopwords(word, jp_stop) for word in tokens]
    tokens = [word for word in tokens if word is not None]
    return tokens

def jaranStrParser(str):
    
    words = []
    mt = MeCab.Tagger("-d /usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd")
    parsed = mt.parseToNode(removeBadChars(str))
    while parsed:
        word = parsed.surface
        words.append(word)        
        parsed = parsed.next
    return words

def removeStopwords(word, stopwordset):

    if word in stopwordset:
        return None
    else:
        return word

def removeBadChars(str):

    bad_chars = [",", ".", "、","。","*", ";", " ", "&nbsp", "\n", "\u3000"]    
    for i in bad_chars:
        str = str.replace(i, "")
    return str

def bowVectorizer(preprocessed_reviews):

    word2id = {}
    for tokens in preprocessed_reviews:
        for token in tokens:
            if token not in word2id:
                word2id[token] = len(word2id)
            else:
                continue

    bow_vec = []
    for tokens in preprocessed_reviews:
        bow = [0] * len(word2id)
        for token in tokens:
            try:
                bow[word2id[token]] += 1
            except:
                pass
        bow_vec.append(bow)

    return bow_vec, word2id

def tfidf_vectorizer(docs):
    def tf(word2id, doc):
        term_counts = np.zeros(len(word2id))
        for term in word2id.keys():
            term_counts[word2id[term]] = doc.count(term)
        tf_values = list(map(lambda x: x/sum(term_counts), term_counts))
        return tf_values
  
    def idf(word2id, docs):
        idf = np.zeros(len(word2id))
        for term in word2id.keys():
            idf[word2id[term]] = np.log(len(docs) / sum([bool(term in doc) for doc in docs]))
        return idf
  
    word2id = {}
    for doc in docs:
        for w in doc:
            if w not in word2id:
                word2id[w] = len(word2id)
  
    return [[_tf*_idf for _tf, _idf in zip(tf(word2id, doc), idf(word2id, docs))] for doc in docs], word2id

def jaccard_similarity(set_a,set_b):
  # calculate the intersection
  num_intersection = len(set.intersection(set_a, set_b))
  # calculate the union
  num_union = len(set.union(set_a, set_b))
  # calculate the Jaccard index, return 1 if the set is empty
  try:
      return float(num_intersection) / num_union
  except ZeroDivisionError:
      return 1.0 

def dice_similarity(set_a, set_b):
  num_intersection =  len(set.intersection(set_a, set_b))
  sum_nums = len(set_a) + len(set_b)
  try:
    return 2 * num_intersection / sum_nums
  except ZeroDivisionError:
    return 1.0 

def simpson_similarity(list_a, list_b):
  num_intersection = len(set.intersection(set(list_a), set(list_b)))
  min_num = min(len(set(list_a)), len(set(list_b)))
  try:
    return num_intersection / min_num
  except ZeroDivisionError:
    if num_intersection == 0:
      return 1.0
    else:
      return 0

def euclidean_distance(list_a, list_b):
    diff_vec = np.array(list_a) - np.array(list_b)
    return np.linalg.norm(diff_vec)

def cosine_similarity(list_a, list_b):
    inner_prod = dot(list_a, list_b)
    norm_a = norm(list_a)
    norm_b = norm(list_b)
    return inner_prod / (norm_a*norm_b)

if __name__ == "__main__":

    main()


