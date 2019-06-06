'''
getting data from jaran onsen pages

input : url(jaran onsen pages, for example : https://www.jalan.net/onsen/OSN_b50350.html)

function : to get urls of inn pages with each inn's minimum price and call the function from scrape_inn_html.py at each url to get data from inn html pages

output : multiple inns' data, like, (innA(a, b, c..), innB(a, b, c..), innC(a, b, c)..)
'''

import os
import re
import sys, getopt
import urllib.request as req
from bs4 import BeautifulSoup
from scrape_inn_html import scrapeInnHtml

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()



def scrapeOnsenHtml(url):
    inn_data = []
    url = "https://www.jalan.net/onsen/OSN_50350.html"
    res = req.urlopen(url)
    soup = BeautifulSoup(res, "html.parser")
    for link in zip(soup.find_all("td",{"class":"hotel-name"}), soup.find_all("td",{"class":"charge"})):
        yad_num = link[0].find("a")
        yad_num.get("href")
        #print(yad_num.get("href"))
        yad_num.get_text()
        #print(yad_num.get_text())
        yad_price = link[1].get_text()
        yad_price = yad_price[3:-13]
        #print("https://www.jaran.net"+yad_num.get("href"))
        inn_one = [removeBadChars(yad_num.get_text()),yad_num.get("href"), yad_price]
        inn_one = inn_one + scrapeInnHtml("https://www.jaran.net"+yad_num.get("href"))
        inn_data.append(inn_one)
    return inn_data

def removeBadChars(str):
   bad_chars = ["&nbsp", "\u3000", "\n"]
   for i in bad_chars:
       str = str.replace(i, "")
   return str

if __name__ == "__main__":

    url = "https://www.jalan.net/onsen/OSN_50350.html"
    inn_data = scrapeOnsenHtml(url)
    print(inn_data)
