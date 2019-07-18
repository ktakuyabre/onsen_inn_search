import os
import sys, getopt
import urllib.request
from bs4 import BeautifulSoup
from xml.dom.minidom import parseString
import random
from django.core.files import File
from django.core.files.temp import NamedTemporaryFile
from scrape_extra_onsen_html import scrapeExtraOnsenHtml

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

from onsen_inns.models import Onsen, OnsenInn
inn_count = 0
extra_onsen_inn_list = []
#onsen_inn_error_list = []

def main():
    try:
        onsens = Onsen.objects.all()
        for onsen in onsens:
            inn_data = []
            onsen_area_id = onsen.onsen_area_id

            if onsen_area_id is None:
                continue

            url = "https://www.jalan.net/onsen/OSN_" + str(onsen_area_id) + ".html"
            print(url)
            inn_data = scrapeExtraOnsenHtml(url)
            print(onsen.onsen_name)
            #print(inn_data)
            storeExtraInnData(inn_data)
    except urllib.error.HTTPError as error:
        print(error)
    except Exception as e:
        print("Error URL:" + url)
        print("Error Message(store_inn_data.py): ", e)

def storeExtraInnData(inn_data):
    global extra_onsen_inn_list
    #global onsen_inn_error_list
    
    try:
        for data in inn_data:
            if data[0] not in extra_onsen_inn_list:
                onsen_inn = OnsenInn.objects.get(inn_id=data[0])
                onsen_inn.headline = data[1] 
                onsen_inn.overview = data[2]
                onsen_inn.inn_photo.save("inn_image_"+str(onsen_inn.inn_id)+".jpg", File(downloadImage(data[3])), save=False)
                onsen_inn.inn_photo_2.save("inn_image_"+str(onsen_inn.inn_id)+"_2.jpg", File(downloadImage(data[4])), save=False)
                onsen_inn.inn_photo_3.save("inn_image_"+str(onsen_inn.inn_id)+"_3.jpg", File(downloadImage(data[5])), save=False)
                onsen_inn.inn_photo_4.save("inn_image_"+str(onsen_inn.inn_id)+"_4.jpg", File(downloadImage(data[6])), save=False)
                '''print(onsen_inn.headline)
                print(onsen_inn.overview)
                print(onsen_inn.inn_photo_2)
                print(onsen_inn.inn_photo_3)
                print(onsen_inn.inn_photo_4)'''
                onsen_inn.save()
                extra_onsen_inn_list.append(onsen_inn.inn_id)

    except Exception as e:
        #onsen_inn_error = [onsen_inn.inn_name, onsen_inn.inn_id]
        #onsen_inn_error_list.append(onsen_inn_error)
        #print("Error Onsen Inn:", onsen_inn_error)
        #print("All Error Onsen Inn So Far:", onsen_inn_error_list)
        print("Error Message(store_inn_data.py, storeInnData): ", e)

def downloadImage(url):
    try:
        img_tmp = NamedTemporaryFile(delete = True)
        img_tmp.write(urllib.request.urlopen(url).read())
        img_tmp.flush()
        return img_tmp
    except Exception as e:
        print("Error(store_inn_data.py, saveInnImage) URL:" + url)
    
if __name__ == "__main__":

    main()
    print("added extra onsen inns", extra_onsen_inn_list)
    print("added extra onsen inns' total ", len(extra_onsen_inn_list))
    #print("onsen_inn_error_list len:", len(onsen_inn_error_list))
    #print("onsen_inn_error_list", onsen_inn_error_list)

