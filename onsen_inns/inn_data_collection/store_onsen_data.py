'''
input : api parameters

function : 
1. to create api query, post it and recieve a xml response
2. to get area IDs and other necessary data from the response, create onsen page urls and call a function from scrape_onsen_html.py at each url to get multiple inns' data
3. add necesary onsen data to inns' data

output : inns' data, like, (innA(a, b, c..), innB(a, b, c..), innC(\
a, b, c)..)
'''

import os
import sys, getopt
import urllib.request
from bs4 import BeautifulSoup
from xml.dom.minidom import parseString

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

from onsen_inns.models import Onsen, OnsenInn

api_key = "peg16a7c976570"
    
def main():

    url = "http://jws.jalan.net/APICommon/OnsenSearch/V1/?key=" + api_key
    #url = url + "&l_area=280200" 
    url = url + "&pref=260000&count=100"
    storeJaranOnsens(url)

def storeJaranOnsens(url):
    try:
        xml = urllib.request.urlopen(url)
        dom = parseString(xml.read())
        num_of_rlts = int(dom.getElementsByTagName('NumberOfResults')[0].firstChild.nodeValue)
        onsen_names = dom.getElementsByTagName('OnsenName')
        onsen_name_kanas = dom.getElementsByTagName('OnsenNameKana')
        onsen_ids = dom.getElementsByTagName('OnsenID')
        onsen_addresses = dom.getElementsByTagName('OnsenAddress')
        regions = dom.getElementsByTagName('Region')
        prefectures = dom.getElementsByTagName('Prefecture')
        large_areas = dom.getElementsByTagName('LargeArea')
        small_areas = dom.getElementsByTagName('SmallArea')
        nature_of_onsens = dom.getElementsByTagName('NatureOfOnsen')
        onsen_area_names = dom.getElementsByTagName('OnsenAreaName')
        onsen_area_name_kanas = dom.getElementsByTagName('OnsenAreaNameKana')
        onsen_area_ids = dom.getElementsByTagName('OnsenAreaID')
        onsen_area_captions = dom.getElementsByTagName('OnsenAreaCaption')

        for i in range(0, num_of_rlts):
            onsen = Onsen()
            onsen.onsen_id = nodeValueNoneCheck(onsen_ids[i])
            if Onsen.objects.filter(onsen_id=onsen.onsen_id).exists():
                continue
            onsen.onsen_name = nodeValueNoneCheck(onsen_names[i])
            onsen.onsen_name_kana = nodeValueNoneCheck(onsen_name_kanas[i])
            
            onsen.onsen_address = nodeValueNoneCheck(onsen_addresses[i])
            onsen.regions = nodeValueNoneCheck(regions[i])
            onsen.prefectures = nodeValueNoneCheck(prefectures[i])
            onsen.large_area = nodeValueNoneCheck(large_areas[i])
            onsen.small_area = nodeValueNoneCheck(small_areas[i])
            onsen.nature_of_onsen = nodeValueNoneCheck(nature_of_onsens[i])
            #onsen.onsen_area_name = nodeValueNoneCheck(onsen_area_names[i])
            #onsen.onsen_area_name_kana = nodeValueNoneCheck(onsen_area_name_kanas[i])
            onsen.onsen_area_id = nodeValueNoneCheck(onsen_area_ids[i])
            #onsen.onsen_area_caption = nodeValueNoneCheck(onsen_area_captions[i])
            #onsens.append(onsen)
            onsen.save()

    except urllib.error.HTTPError as error:
        pass

def nodeValueNoneCheck(element):
    if element.firstChild != None: 
        return element.firstChild.nodeValue
    else:
        return None


def jaranHtmlParser(url):

    try:
        html = urllib.request.urlopen(url)
        soup = BeautifulSoup(html, "html.parser")    

        return soup                

    except urllib.error.HTTPError as error:
        pass

def removeBadChars(str):
    bad_chars = [",", ".", "、","。","*", ";", " ", "&nbsp", "\n"]    
    for i in bad_chars:
        str = str.replace(i, "")
    return str
    #review_text = " ".join(i for i in review.get_text() if not i in bad_chars)

if __name__ == "__main__":

    main()
