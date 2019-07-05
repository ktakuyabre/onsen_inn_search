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
inn_data = []
first_page = True

def scrapeOnsenHtml(url):
    global first_page
    try:
        #inn_data = []
        #url = "https://www.jalan.net/onsen/OSN_50350.html"
        res = req.urlopen(url)
        soup = BeautifulSoup(res, "html.parser")
        #link = soup.find("td",{"class":"pagelink"})
        #link.a.get("href")
        #next_link = "https://www.jaran.net"+link.a.get("href")
        #print(link.a.get("href"))
        #print(next_link)

        #for link in zip(soup.find_all("div",{"class":"main_ph"}),soup.find("img src"))

        for link in zip(soup.find_all("td",{"class":"hotel-name"}), soup.find_all("td",{"class":"charge"}), soup.find_all("div", {"class":"main_ph"})):
            yad_num = link[0].find("a")
            yad_num.get("href")
            #print(yad_num.get("href"))
            #yad_num.get_text()
            #print(yad_num.get_text())
            yad_price = link[1].get_text()
            yad_price = yad_price[3:-13]
            yad_price = int(yad_price.replace(',', ''))
            #print("https://www.jaran.net"+yad_num.get("href"))
            #yad_pic = soup.find("div",{"class":"main_ph"})
            #yad_pic = yad_pic.img.get("src")
            #yad_pic.img.get("src")
            yad_pic = link[2].img.get("src")
            inn_one = [int(yad_num.get("href")[4:-1]), removeBadChars(yad_num.get_text()),
            #yad_num.get("href"),
             yad_pic,yad_price]
            inn_one = inn_one + scrapeInnHtml("https://www.jaran.net"+yad_num.get("href"))
            inn_data.append(inn_one)

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
                        scrapeOnsenHtml(next_link)
    
    except Exception as e:
        print("Error URL: ", url)
        print("Error Message(scrape_onsen_html.py)", e)

    return inn_data

def removeBadChars(str):
   bad_chars = ["&nbsp", "\u3000", "\n"]
   for i in bad_chars:
       str = str.replace(i, "")
   return str

if __name__ == "__main__":

    url = "https://www.jalan.net/onsen/OSN_50137.html"
    inn_data = scrapeOnsenHtml(url)
    print(inn_data)
    print(len(inn_data))
    print(len(inn_data[0]))
