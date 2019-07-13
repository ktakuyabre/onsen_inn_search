'''
getting data from jaran onsen pages

input : url(jaran onsen pages, for example : https://www.jalan.net/onsen/OSN_b50350.html)

function : to get urls of inn pages with each inn's minimum price and call the function from scrape_inn_html.py at each url to get data from inn html pages

output : multiple inns' data, like, (innA(a, b, c..), innB(a, b, c..), innC(a, b, c)..)
'''

import os
import sys, getopt
import urllib.request
from bs4 import BeautifulSoup
from xml.dom.minidom import parseString
from scrape_inn_html_sub import scrapeInnHtml

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

url_base = "https://www.jalan.net/"

def scrapeOnsenHtml(url):

    inn_data  = []
    try:
        soup = jaranHtmlParser(url)
        for hotel_name in soup.find_all("td", {"class": "hotel-name"}):
            inn_link = hotel_name.find("a")
            inn_name = removeBadChars(inn_link.get_text())
            inn_url = url_base + inn_link["href"]
            inn_data_tmp = scrapeInnHtml(inn_url)
            inn_data_tmp = [inn_name] + inn_data_tmp
            inn_data.append(inn_data_tmp)

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
    bad_chars = [",", ".", "、","。","*", ";", " ", "&nbsp", "\u3000", "\n"]    
    for i in bad_chars:
        str = str.replace(i, "")
    return str

if __name__ == "__main__":
    
    #url = "https://www.jalan.net/onsen/OSN_50350.html"
    #url = "https://www.jalan.net/onsen/OSN_50010.html"
    #url = "https://www.jalan.net/onsen/OSN_50041.html"
    url = "https://www.jalan.net/onsen/OSN_50396.html"
    inn_data = scrapeOnsenHtml(url)
    print(inn_data)
