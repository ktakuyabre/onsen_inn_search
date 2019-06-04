'''
input : api parameters

function : 
1. to create api query, post it and recieve a xml response
2. to get area IDs and other necessary data from the response, create onsen page urls and call a function from scrape_onsen_html.py at each url to get multiple inns' data
3. add necesary onsen data to inns' data

output : inns' data, like, (innA(a, b, c..), innB(a, b, c..), innC(\
a, b, c)..)
'''

import sys, getopt
from .models import Onsen, OnsenInn
import urllib.request
from bs4 import BeautifulSoup
from xml.dom.minidom import parseString

api_key = "peg16a7c976570"
    
def main():

    url = "http://jws.jalan.net/APICommon/OnsenSearch/V1/?key=" + api_key
    url = url + "&l_area=280200" 
    storeJaranOnsens(url)

def storeJaranOnsens(url):
    try:
        xml = urllib.request.urlopen(url)
        dom = parseString(xml.read())
        num_of_rlts = int(dom.getElementsByTagName('NumberOfResults')[0])
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
            onsen.onsen_name = onsen_names[i]
            onsen.onsen_name_kana = onsen_name_kanas[i]
            onsen.onsen_id = onsen_ids[i]
            onsen.onsen_address = onsen_addresses[i]
            onsen.regions = regions[i]
            onsen.prefectures = prefectures[i]
            onsen.large_area = large_areas[i]
            onsen.small_area = small_areas[i]
            onsen.nature_of_onsen = nature_of_onsens[i]
            onsen.onsen_area_name = onsen_area_names[i]
            onsen.onsen_area_name_kana = onsen_area_name_kanas[i]
            onsen.onsen_area_id = onsen_area_ids[i]
            onsen.onsen_area_caption = onsen_area_captions[i]

            if Onsen.objects.filter(onsen_id=onsen.onsen_id).exists():
                continue
            onsens.append(onsen)
            onsen.save()

    except urllib.error.HTTPError as error:
        pass

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
