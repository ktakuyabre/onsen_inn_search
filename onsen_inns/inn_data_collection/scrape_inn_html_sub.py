'''
getting data from jaran inn pages

input : url(jaran inn pages, for example : https://www.jalan.net/yad321542/

function : to get necessary data from inn pages

output : single inn's data, like, innA(a, b, c..)
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

def scrapeInnHtml(url):
    inn_data = []
    try:
       soup = jaranHtmlParser(url)
       rooms_total_parents = soup.find("div", {"class": "shisetsu-main04 jlnpc-table-col-layout"})
       if rooms_total_parents != None:
           rooms_total = rooms_total_parents.find_all("td", {"class": "jlnpc-td06"})
           if rooms_total != None and rooms_total != []:
               inn_data.append(removeBadChars(rooms_total[-1].get_text())[:-1])
           else:
               inn_data.append("")
       else:
           inn_data.append("")

    except urllib.error.HTTPError as error:
        pass

    return inn_data

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

if __name__ == "__main__":
    
    url = "https://www.jalan.net/yad321542/"
    inn_data = scrapeInnHtml(url)
    print(inn_data)
