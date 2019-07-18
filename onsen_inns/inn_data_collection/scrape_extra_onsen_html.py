import os
import re
import sys, getopt
import urllib.request as req
import requests
import http.cookiejar
from bs4 import BeautifulSoup
from scrape_inn_html import scrapeInnHtml

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()
inn_data = []
first_page = True

def scrapeExtraOnsenHtml(url):
    global first_page
    try:
        inn_data = []
        headers = {
            'Host': 'www.jalan.net',
            'Referer': url
            }
        session = requests.session()
        response = session.get(url)

        soup = BeautifulSoup(response.content, "html.parser")

        for extra_inn_data in zip(soup.find_all("td",{"class":"hotel-name"}), soup.find_all(attrs={"class": "catch"}), soup.find_all(attrs={"class": "read"})):
            inn_data_set = [int(extra_inn_data[0].a.get("href")[4:-1]), removeBadChars(extra_inn_data[1].get_text()), removeBadChars(extra_inn_data[2].get_text())]
            inn_data.append(inn_data_set)
        
        for i, img in enumerate(soup.find_all(attrs={"class": "phtm"})):
            index = int(i/4)
            inn_data[index].append(img.img.get("src"))

        # keep scraping the next page until the last page
        if first_page:        
            link = soup.find("td",{"class":"pagelink"})
            links = link.find_all("a")
            if links != []:
                last_link = "https://www.jalan.net" + links[-1].get("href")
                first_page = False
                if last_link != url:
                    last_link_number = int(last_link[-6])
                    for i in range(2, (last_link_number+1)):
                        next_link = url[:-5] + "_" + str(i) + ".html"
                        print(next_link)
                        scrapeExtraOnsenHtml(next_link)

    except Exception as e:
        print("Error URL: ", url)
        print("Error Message(scrape_onsen_html.py)", e)

    return inn_data

def removeBadChars(str):
    bad_chars = ["\u3000", "&nbsp", "\n", "\r"]    
    for i in bad_chars:
        str = str.replace(i, "")
    return str

if __name__ == "__main__":

    #url = "https://www.jalan.net/onsen/OSN_50137.html"
    #url = "https://www.jalan.net/onsen/OSN_50651.html"
    url = "https://www.jalan.net/onsen/OSN_50019.html"
    inn_data = scrapeExtraOnsenHtml(url)
    print(inn_data)
    print(len(inn_data))
