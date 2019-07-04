'''
storing inn data we get

input : none

function : 
1: to call the function from jaran_onsen_api.py at each area id and get the data of all inns existing within that area.  
2: to store all the inns' data we get into our database by mapping the all inns' data to our onsen inn model

output : none
'''

import os
import sys, getopt
import urllib.request
from bs4 import BeautifulSoup
from xml.dom.minidom import parseString
import random
from django.core.files import File
from django.core.files.temp import NamedTemporaryFile
#from scrape_onsen_html import scrapeOnsenHtml
from scrape_onsen_html_sub import scrapeOnsenHtml

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

from onsen_inns.models import Onsen, OnsenInn
inn_count = 0

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
            inn_data = scrapeOnsenHtml(url)
            print(onsen.onsen_name)
            storeInnData(onsen, inn_data)
    except urllib.error.HTTPError as error:
        pass
    except Exception as e:
        print("Error(store_inn_data.py, main) URL:" + url)

def storeInnData(onsen, inn_data):
    global inn_count
    for data in inn_data:
        if not OnsenInn.objects.filter(inn_id=inn_count).exists():
            onsen_inn = OnsenInn()
            '''onsen_inn.inn_id = data[0]
            onsen_inn.inn_name = data[1]
            onsen_inn.inn_photo = data[2]
            onsen_inn.inn_min_price = data[3]
            onsen_inn.review_room = data[4]
            onsen_inn.review_bath = data[5]            
            onsen_inn.review_breakfast = data[6]
            onsen_inn.review_dinner = data[7]
            onsen_inn.review_service = data[8]
            onsen_inn.review_cleaness = data[9]
            onsen_inn.rooms_total = data[10]
            onsen_inn.baths_total = data[11]
            onsen_inn.free_wifi = data[12]
            onsen_inn.convenience_store = data[13]
            onsen_inn.hand_towel = data[14]
            onsen_inn.dental_amenities = data[15]
            onsen_inn.bath_towel = data[16]
            onsen_inn.shampoo = data[17]
            onsen_inn.conditioner = data[18]
            onsen_inn.body_wash = data[19]
            onsen_inn.bar_soap = data[20]
            onsen_inn.yukata = data[21]
            onsen_inn.pajamas = data[22]
            onsen_inn.bathrobe = data[23]
            onsen_inn.hairdryer = data[24]
            onsen_inn.duvet = data[25]
            onsen_inn.razor = data[26]
            onsen_inn.shower_cap = data[27]
            onsen_inn.cotton_swab = data[28]
            onsen_inn.onsui_toilet = data[29]
            onsen_inn.hair_brush = data[30]
            onsen_inn.category = data[31]
            onsen_inn.onsen = onsen'''
            onsen_inn.inn_id = inn_count
            onsen_inn.inn_name = data[0]
            #onsen_inn.inn_photo = data[2]
            #saveInnImage(data[0])
            onsen_inn.inn_min_price = 10000
            onsen_inn.review_room = round(random.uniform(0,5), 1)
            onsen_inn.review_bath = round(random.uniform(0,5), 1)
            onsen_inn.review_breakfast = round(random.uniform(0,5), 1)
            onsen_inn.review_dinner = round(random.uniform(0,5), 1)
            onsen_inn.review_service = round(random.uniform(0,5), 1)
            onsen_inn.review_cleaness = round(random.uniform(0,5), 1)
            if data[1] != '':
                onsen_inn.rooms_total = int(data[1])
            else:
                onsen_inn.rooms_total = None
            onsen_inn.baths_total = random.randint(1,100)
            onsen_inn.free_wifi = bool(random.getrandbits(1))
            onsen_inn.convenience_store = bool(random.getrandbits(1))
            onsen_inn.hand_towel = bool(random.getrandbits(1))
            onsen_inn.dental_amenities = bool(random.getrandbits(1))
            onsen_inn.bath_towel = bool(random.getrandbits(1))
            onsen_inn.shampoo = bool(random.getrandbits(1))
            onsen_inn.conditioner = bool(random.getrandbits(1))
            onsen_inn.body_wash = bool(random.getrandbits(1))
            onsen_inn.bar_soap = bool(random.getrandbits(1))
            onsen_inn.yukata = bool(random.getrandbits(1))
            onsen_inn.pajamas = bool(random.getrandbits(1))
            onsen_inn.bathrobe = bool(random.getrandbits(1))
            onsen_inn.hairdryer = bool(random.getrandbits(1))
            onsen_inn.duvet = bool(random.getrandbits(1))
            onsen_inn.razor = bool(random.getrandbits(1))
            onsen_inn.shower_cap = bool(random.getrandbits(1))
            onsen_inn.cotton_swab = bool(random.getrandbits(1))
            onsen_inn.onsui_toilet = bool(random.getrandbits(1)) 
            onsen_inn.hair_brush = bool(random.getrandbits(1))
            #onsen_inn.category = random.randint(1,15)
            onsen_inn.onsen = onsen
            onsen_inn.save()
        inn_count+=1

def saveInnImage(model, url):
    try:
        img_tmp = NamedTemporaryFile(delete = True)
        img_tmp.write(urllib.request.urlopen(url))
        img_tmp.flush()
        model.inn_photo.save("inn_image_"+str(model.inn_id)+".jpg", File(img_temp), save=True)
    except urllib.error.HTTPError as error:
        pass
    except Exception as e:
        print("Error(store_inn_data.py, saveInnImage) URL:" + url)

if __name__ == "__main__":

    main()
