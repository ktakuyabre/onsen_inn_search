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

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

def removeBadChars(str):
   bad_chars = [",","-","&nbsp","\n","\xa0"]
   for i in bad_chars:
       str = str.replace(i,"")
   return str

def scrapeInnHtml(url):
    inn_data = []
    html = urllib.request.urlopen("https://www.jalan.net/yad321542")
    soup = BeautifulSoup(html)
    for link in soup.find_all("td", {"class": "jlnpc-td05 s12_30 fb"}):
        inn_data.append(link.get_text())

    for link in soup.find_all("div", {"class": "shisetsu-main04 jlnpc-table-col-layout"}):
        for l in link.find_all("td", {"class": "jlnpc-td06"}):
            text = l.get_text()
            text = removeBadChars(text)
            inn_data.append(text)

    for link in soup.find_all("div", {"class": "shisetsu-main04 jlnpc-table-col-layout"}):
        for l in link.find_all("td", {"class": "jlnpc-td03"}):
            text = l.get_text()
            text = removeBadChars(text)
            inn_data.append(text)

    for link in soup.find_all("table", {"class": "s12_30 shisetsu-amenityspec_body jlnpc-table-basic-layout"}):
        for l in link.find_all("td", {"class":"jlnpc-td01"}):
            text = l.get_text()
            text = removeBadChars(text)
            #特定のアメニティあるなら0を、そうでないと1を返す
            if text=='○':
                text = 0
            elif text=='×':
                text = 1
            inn_data.append(text)

    for link in soup.find_all("div", {"class": "jlnpc-table-row-layout"}):
        for l in link.find_all("td", {"class":"jlnpc-td03 s12_30"}):
            text = l.get_text()
            text = removeBadChars(text)
            text2 = "インターネット"
            #ネット無料なら0を、そうでないと1を返す
            if text2 in text:
                text = 0
            else:
                text = 1
            inn_data.append(text)

    #for link in soup.find("div",{"class":"iconbox"}):
        #text = link.get_text()
        #text2 = "コンビニ"
        #コンビニまで5分以内なら0を、そうでないと1を返す
        #if text2 in text:
            #text = 0
        #else:
            #text = 1
        #inn_data.append(text)




    return inn_data

if __name__ == "__main__":

    url = "https://www.jalan.net/yad321542/"
    inn_data = scrapeInnHtml(url)
    print(inn_data)
