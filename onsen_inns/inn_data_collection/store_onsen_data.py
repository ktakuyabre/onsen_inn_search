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
from store_inn_data import storeInnData
from scrape_onsen_html import scrapeOnsenHtml

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

from onsen_inns.models import Onsen, OnsenInn

api_key = "peg16a7c976570"
url_base = "http://jws.jalan.net/APICommon/OnsenSearch/V1"
area_param_url = ""
start_param_url = ""
other_param_url = ""
reg = ""
pref = ""
l_area = ""
s_area = ""
onsen_q = ""
start = ""
count = ""
xml_ptn = ""
params = []
area_param = ""
start_param = ""
file = ""
file_flag = False
start_tmp = 1

def usage():
    print("NAME: store_onsen_data.py -- store jaran onsen data to onsen_inn_search database by using jaran api")
    print("USAGE: python3 store_onsen_data.py <request parameters>")
    print("-h --help - show the usage of store_onsen_data.py")
    print("-r --reg - specify the reg parameter or the text file with reg parameters in it")
    print("-p --pref - specify the pref parameter or the text file with pref parameters in it")
    print("-l --l_area - specify the l_area parameter or the text file with l_area parameters in it")
    print("-s --s_area - specify the s_area parameter or the text file with s_area parameters in it")
    print("-q --onsen_q - specify the onsen_q parameter")
    print("-f --start - specify the start parameter")
    print("-c --count - specify the count parameter")
    print("-x --xml_ptn - specify the xml_ptn parameter")
    print("")
    print("EXAMPLES: ")
    print("python3 store_onsen_data.py -l 280200")
    print("")
    print("python3 store_onsen_data.py -p 260000 -c 100")
    print("")
    print("python3 store_onsen_data.py -p pref_code_list.txt -c 100")
    print("")
    sys.exit(2)
    
def main():

    global area_param_url
    global start_param_url
    global other_param_url
    global reg
    global pref
    global l_area
    global s_area
    global onsen_q
    global start 
    global count 
    global xml_ptn 
    global params
    global area_param
    global start_param
    global file
    global file_flag

    try:
        opts, args = getopt.getopt(sys.argv[1:], "hr:p:l:s:q:f:c:x:", ["help", "reg", "pref", "l_area", "s_area", "onsen_q", "start", "count", "xml_ptn"])

        if len(sys.argv) < 2:
            usage()
        url = url_base + "/?key=" + api_key

    except:
        usage()

    for opt, arg in opts:
        if opt == "-h":
            usage()
        if opt in ("-r", "--reg"):
            area_param = "&reg="
            if ".txt" in arg[-4:]:
                file = arg
                file_flag = True
                readParameterFile(file)
            else:
                reg = arg
                area_param_url = area_param_url + area_param + reg
        if opt in ("-p", "--pref"):
            area_param = "&pref="
            if ".txt" in arg[-4:]:
                file = arg
                file_flag = True
                readParameterFile(file)
            else:
                pref = arg
                area_param_url = area_param_url + area_param + pref
        if opt in ("-l", "--l_area"):
            area_param = "&l_area="
            if ".txt" in arg[-4:]:
                file = arg
                file_flag = True
                readParameterFile(file)
            else:
                l_area = arg
                area_param_url = area_param_url  + area_param + l_area
        if opt in ("-s", "--s_area"):
            area_param = "&s_area="
            if ".txt" in arg[-4:]:
                file = arg
                file_flag = True
                readParameterFile(file)
            else:
                s_area = arg
                area_param_url = area_param_url + area_param + s_area
        if opt in ("-q", "onsen_q"):
            onsen_q = arg
            other_param_urls = other_param_url + "&onsen_q=" + onsen_q
        if opt in ("-f", "--start"):
            start = arg
            start_param = "&start="
            start_param_url = start_param + start 
        if opt in ("-c", "--count"):
            count = arg
            other_param_url = other_param_url + "&count=" + count            
        if opt in ("-x", "--xml_ptn"):
            xml_ptn = arg
            other_param_url = other_param_url + "&xml_ptn=" + xml_ptn
            
    if file_flag:
        requestMultipleUrls()
    else:
        url = url + area_param_url + start_param_url + other_param_url
        storeJaranOnsens(url)

def requestMultipleUrls():
    
    global start_tmp 
    global area_param_url
    for i in range(0,len(params)):
        start_tmp = 1
        area_param_url = area_param + params[i]
        url = url_base + "/?key=" + api_key + area_param_url + start_param_url + start + other_param_url
        storeJaranOnsens(url)

def storeJaranOnsens(url):

    global start_param
    global start_tmp
    print("[*] Request URL : {0}".format(url))
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

        for i in range(0, len(onsen_ids)):
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
            #onsen.onsen_area_id = nodeValueNoneCheck(onsen_area_ids[i])
            #onsen.onsen_area_caption = nodeValueNoneCheck(onsen_area_captions[i])
            #onsens.append(onsen)
            onsen.save()
            print("[*] Storing {0} onsen data".format(onsen.onsen_name))
            '''onsen = Onsen.objects.filter(onsen_id=onsen.onsen_id).first()
            print(onsen)
            onsen_area_id = onsen.onsen_area_id
            print(onsen_area_id)
            if onsen_area_id != None:
                inn_data = []
                url = "https://www.jalan.net/onsen/OSN_" + str(onsen_area_id) + ".html"
                print(url)
                inn_data = scrapeOnsenHtml(url)
                print(onsen.onsen_name)
                storeInnData(onsen, inn_data)

        start_tmp = start_tmp + int(count)
        if num_of_rlts > start_tmp:
            if not "start" in url:
                start_param = "&start="
            url = url_base + "/?key=" + api_key + area_param_url + start_param + str(start_tmp) + other_param_url
            storeJaranOnsens(url)        '''

    except urllib.error.HTTPError as error:
        pass
    except Exception as e:
        print("Error URL:" + url)
        print("Error(store_onsen_data.py): ", e)

def readParameterFile(file):
    global params
    with open(file, 'r') as fp:
        for line in fp:
            params.append(removeBadChars(line))

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
