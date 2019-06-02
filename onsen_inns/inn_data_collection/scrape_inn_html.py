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

def scrapeInnHtml(url):
    inn_data = []
    return inn_data

if __name__ == "__main__":
    
    url = "https://www.jalan.net/yad321542/"
    inn_data = scrapeInnHtml(url)
    print(inn_data)
