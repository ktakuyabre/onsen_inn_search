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
from scrape_inn_html import scrapeInnHtml

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

def scrapeOnsenHtml(url):
    inn_data = []
    return inn_data

if __name__ == "__main__":
    
    url = "https://www.jalan.net/onsen/OSN_50350.html"
    inn_data = scrapeOnsenHtml(url)
    print(inn_data)
