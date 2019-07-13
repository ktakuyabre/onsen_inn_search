'''
getting data from jaran inn pages

input : url(jaran inn pages, for example : https://www.jalan.net/yad321542/

function : to get necessary data from inn pages

output : single inn's data, like, innA(a, b, c..)
'''

import os
import sys, getopt
import urllib.request
import requests
import http.cookiejar
from bs4 import BeautifulSoup

sys.path.append("..")
sys.path.append("../..")
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'onsen_inn_search.setting\
s')
import django
django.setup()

def removeBadChars(str):
   bad_chars = [",","-","&nbsp","\n","\xa0"," ",""]
   for i in bad_chars:
       str = str.replace(i,"")
   return str

def scrapeInnHtml(url, session, headers, cookies):
    #try:
    inn_data = []
    #html = urllib.request.urlopen("https://www.jalan.net/yad321542")
    #html = urlib.request.urlopen(url, cookiejar)
    #html = requests.get(url, cookiejar)
    #session.headers.update({'referer': referer})
    res = session.get(url, headers=headers, cookies=cookies)
    soup = BeautifulSoup(res.content, "html.parser")
    #print(res.content)
    #soup = BeautifulSoup(html.content, "html.parser")
    for link in soup.find_all("td", {"class": "jlnpc-td05 s12_30 fb"}):
        text = link.get_text()
        #print(text)
        if text == "-":
            text = 0
        text = float(text)
        inn_data.append(text)

    link = soup.find_all("div", {"class": "shisetsu-main04 jlnpc-table-col-layout"})
    link = link[0]
    for i, l in enumerate(link.find_all("td", {"class": "jlnpc-td06"})):
        text = l.get_text()
        text = removeBadChars(text)
        text = text[:-1]
        text = int(text)
        if i == 4:
            inn_data.append(text)



    #links = soup.find_all("div", {"class": "shisetsu-main04 jlnpc-table-col-layout"})
    #link = links[2]
    link = soup.find("table", {"class": "jlnpc-shisetsu-bath"})
    if link != None:
        num = 0
        for i, l in enumerate(link.find_all("td", {"class": "jlnpc-td03"})):
            text = l.get_text()
            text = removeBadChars(text)
            text = int(text)
            if i==0 or i==3 or i==6:
                num = num + text
        inn_data.append(num)
    else:
        inn_data.append(0)

    #サービス、レジャー
    added = False
    service_leisure_link = soup.find("div", {"class": "shisetsu-main03 shisetsu-amenityservice_body_wrap"})
    for flag, link in zip(service_leisure_link.find_all("td", {"class": "jlnpc-td01 s11_30"}), service_leisure_link.find_all("td", {"class": "jlnpc-td03 s12_30"})):

        if "サービス&レジャー" in flag.get_text():
            text = link.get_text()
            text = removeBadChars(text)
            p = [x.strip() for x in text.split('・')]
            inn_data.append(p)
            added = True
            break
    if added==False:
        inn_data.append([])


    links = soup.find("div", {"class": "jlnpc-table-row-layout"}).find_all("td", {"class":"jlnpc-td03 s12_30"})
    text = links[-1].get_text()
    text = removeBadChars(text)
    text2 = "インターネット"
    #ネット無料なら0を、そうでないと1を返す
    if text2 in text:
        text = 1
    else:
        text = 0
    inn_data.append(text)

    imgs = soup.find("div",{"class":"iconbox"}).find_all("img")
    konbini = False
    for img in imgs:
        text = img["alt"]
        text2 = "コンビニ"
        #コンビニまで5分以内なら0を、そうでないと1を返す
        if text2 in text:
            #text = 0
            konbini = True
        '''else:
            text = 1'''
    if konbini:
        text = 1
    else:
        text = 0
    inn_data.append(text)

    links = soup.find_all("table", {"class": "s12_30 shisetsu-amenityspec_body jlnpc-table-basic-layout"})
    link = links[0]
    for i, l in enumerate(link.find_all("td", {"class":"jlnpc-td01"})):
        text = l.get_text()
        text = removeBadChars(text)
        #特定のアメニティあるなら0を、そうでないと1を返す
        if text=='○':
            text = 1
        elif text=='×':
            text = 0
        else:
            continue

        if i != 11 and i != 15 and i <= 18:
            inn_data.append(text)

    '''except Exception as e:
        print("Error URL: ", url)
        print("Error Message(scrape_inn_html.py): ", e )'''
        #print("Response", res.content)

    return inn_data

if __name__ == "__main__":

    url = "https://www.jalan.net/yad321542/"
    urls = ["https://www.jaran.net/yad369086/", 
            "https://www.jaran.net/yad390005/",
            "https://www.jaran.net/yad358725/",
            "https://www.jaran.net/yad324535/",
            "https://www.jaran.net/yad358886/",
            "https://www.jaran.net/yad348131/",
            "https://www.jaran.net/yad386844/",
            "https://www.jaran.net/yad332032/"]
    '''for url in urls:
        inn_data = scrapeInnHtml(url)
        print(inn_data)'''
