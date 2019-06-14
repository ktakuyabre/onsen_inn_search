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

'''def removeBadChars(str):
   bad_chars = [",",".","&nbsp","\n"]
   for i in bad_chars:
       str = str.replace(i,"")
   return str'''

def scrapeInnHtml(url):
    inn_data = []
    html = urllib.request.urlopen("https://www.jalan.net/yad321542")
    soup = BeautifulSoup(html)
    for link in soup.find_all("td", {"class": "jlnpc-td05 s12_30 fb"}):
        inn_data.append(link.get_text())

    '''for link in soup.find_all("div", {"class": "shisetsu-main04 jlnpc-table-col-layout"}).find_all("td", {"class": "jlnpc-td06"}):
        removeBadChars(inn_data)
        inn_data.append(link.get_text())

    for link in soup.find_all("div", {"class": "shisetsu-main04 jlnpc-table-col-layout"}):
        for link in soup.find_all("td",{"class":"jlnpc-td03"}):
            inn_data.append(link.get_text())
            #removeBadChars(inn_data)

    for link in soup.find_all("table", {"class": "s12_30 shisetsu-amenityspec_body jlnpc-table-basic-layout"}):
        for link in soup.find_all("td", {"class":"jlnpc-td01"}):
            #removeBadChars(inn_data)
            inn_data.append(link.get_text())

    for link in soup.find_all("div", {"class": "jlnpc-table-row-layout"}):
        for link in soup.find_all("td", {"class":"jlnpc-td03 s12_30"}):
            #removeBadChars(inn_data)
            inn_data.append(link.get_text())'''

    '''imgs = soup.find_all('img',src=re.compile('^https://cdn.jalan.jp/uw/images/icon_feature_09.gif'))
    for img in imgs:
        print(img['src'])
        r = requests.get(img['src'])
        inn_data.append(link.get(img['src']))
        with open(str('./picture/')+str(django.django4())+str('.jpeg'),'wb')as file:
            file.write(r.content)'''

    return inn_data

if __name__ == "__main__":

    url = "https://www.jalan.net/yad321542/"
    inn_data = scrapeInnHtml(url)
    print(inn_data)
