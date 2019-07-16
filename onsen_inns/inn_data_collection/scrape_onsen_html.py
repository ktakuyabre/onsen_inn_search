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

def scrapeOnsenHtml(url):
    global first_page
    try:
        inn_data = []
        #url = "https://www.jalan.net/onsen/OSN_50350.html"
        #res = req.urlopen(url)
        headers = {
            #'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
            #'Accept-Encoding': 'gzip, deflate, br',
            #'Accept-Language': 'fr,zh-CN;q=0.9,zh;q=0.8,en-US;q=0.7,en;q=0.6,ja;q=0.5,ko;q=0.4',
            #'Cache-Control': 'max-age=0',
            #'Connection': 'keep-alive',
            'Host': 'www.jalan.net',
            #'Referer': 'https://www.jalan.net/onsen/OSN_50137.html',
            'Referer': url
            #'Upgrade-Insecure-Requests': '1',
            #'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'
            #'Cookie': 'log_sys_uid=MTU1Njc4MjYwMDYzOWZlYTNu; IID=ff34eb34f0d1460a94806d34f21cbc56; _gcl_au=1.1.294549414.1556782602; _ga=GA1.2.1778339716.1556782602; _fbp=fb.1.1556782602128.1498893567; r_ad_token1=4cD0vg005BBfD6cpX4vm; r_ad_token2=4cD0vg005BBfD6cpX4vm; r_ad_token1=4cD0vg005BBfD6cpX4vm; r_ad_token2=4cD0vg005BBfD6cpX4vm; cto_lwid=7183d9ae-74e5-41b6-b751-d7268007fc6c; jalan__zc=3.5cca9e0b20c19d10fce9455a.26.0.0.0.; jalan__zc_store=%7B%22cv%22%3Anull%7D; tabFlg=1; jln_m=ywhNC%2FhpdFc0%2B1XZ%2FcoMLw%3D%3D#; jln_m2=ywhNC%2FhpdFc0%2B1XZ%2FcoMLw%3D%3D#; AMCV_840813355385EAFC0A490D4D%40AdobeOrg=-1176276602%7CMCIDTS%7C18036%7CMCMID%7C35034924781716567480360735970358278948%7CMCAAMLH-1558838755%7C11%7CMCAAMB-1558838756%7CRKhpRz8krg2tLO6pguXWp5olkAcUniQYPHaMWWgdJ3xzPWQmdj0y%7CMCOPTOUT-1558241155s%7CNONE%7CMCAID%7C2E654F0485037B87-6000119D0006469F; mbox=session#eff35f61f5b7410b909a620404c20220#1558235818|PC#eff35f61f5b7410b909a620404c20220.30_15#1621478758; __utma=93745542.1778339716.1556782602.1557467558.1559363598.5; __utmz=93745542.1559363598.5.4.utmcsr=jws.jalan.net|utmccn=(referral)|utmcmd=referral|utmcct=/apicommon/onsensearch/v1/; JalanSESSIONID=JalanSsZhEybGlM8B3NoMKSrFfhqIH41; yad_arealink=1; _kys=QEkRAzNzzH9JgA_.jalan.net; qc_ad_hFlg=1; frmval2=dyn_y_txt%23%232019%3C%3Edyn_m_txt%23%237%3C%3Edyn_d_txt%23%233%3C%3Edatecheck%23%23true%3C%3Edyn_stay_txt%23%231%3C%3Edyn_adult_num%23%232%3C%3Echild1Num%23%23%3C%3Echild2Num%23%23%3C%3Echild3Num%23%23%3C%3Echild4Num%23%23%3C%3Echild5Num%23%23%3C%3Edyn_room_num%23%231%3C%3Edyn_badget_min%23%23null%3C%3Edyn_badget_max%23%23null%3C%3EroomCrack%23%23200000%3C%3EroomCount%23%23null; jln_searchcondition=%22%7B%5C%22dateUndecided%5C%22%3A%20%5C%221%5C%22%2C%20%5C%22roomCount%5C%22%3A%20%5C%221%5C%22%2C%20%5C%22adultNum%5C%22%3A%20%5C%222%5C%22%2C%20%5C%22kenCd%5C%22%3A%20%5C%22140000%5C%22%2C%20%5C%22lrgCd%5C%22%3A%20%5C%22141600%5C%22%2C%20%5C%22onsenCd%5C%22%3A%20%5C%2250137%5C%22%2C%20%5C%22careOnsen%5C%22%3A%20%5B%5C%221%5C%22%2C%20%5C%22%5C%22%5D%2C%20%5C%22carePribateBath%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22careBathRent%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22careOpenbath%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22careKake%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22careNigori%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22childPriceFlg%5C%22%3A%20%5C%220%2C0%2C0%2C0%2C0%5C%22%2C%20%5C%22child1Num%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22child2Num%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22child3Num%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22child4Num%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22child5Num%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22roomCrack%5C%22%3A%20%5C%22200000%5C%22%2C%20%5C%22photo%5C%22%3A%20%5C%221%5C%22%2C%20%5C%22mealType%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22afCd%5C%22%3A%20%5C%2201%5C%22%2C%20%5C%22lrgOsnCd%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22initKenCd%5C%22%3A%20%5C%22140000%5C%22%2C%20%5C%22initLrgCd%5C%22%3A%20%5C%22141600%5C%22%2C%20%5C%22initOsnCd%5C%22%3A%20%5C%2250137%5C%22%2C%20%5C%22initKashikiri%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22initHeyaRoten%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22initRoten%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22initKakenagashi%5C%22%3A%20%5C%22%5C%22%2C%20%5C%22initNigori%5C%22%3A%20%5C%22%5C%22%7D%22; _gid=GA1.2.1364347396.1563039997; _kyp=QEkQBZnLhZKYD5f50yDZQAi5TI6ZeYJbyTbdITGoGnKW19kDw9JglvU3yHPkbQKJ+QCVqUbogs4RBgA_.jalan.net; abtest=H4sIAAAAAAAAAA%3D%3DW%2FOWgbW4iEEwK7EsUa%2B0JDNHzyOxOMM3sYCV%2FdbBw2IJF5kZmNwYuHLyE1Pc%0D%0AEpNL8os8GThLMopSizPyc1IqCuwdGECAp5wDSAoAMWsJA7%2BnS7yPq6NfvKGlgXG8gWEJg3xxaXJy%0D%0AanFxvKGOkQFQ1NTQ2AAIoBwjM1Q9Jqh6jCDKzA0sEHrMjSxKGISBeoA8E0PDeGePeAMDU1R9MKWG%0D%0ARlB9lpaGRsZAFXwwfUbxQf7%2BIehWmRkYwp0H04JwnoURdueZGpkjnGdmaFYBAA%2FNyolZAQAA; dflt_srch_prm=1#200000; _tktmp=_tkdestinationKenCd%3d140000%3b; JalanSession-jln01=Bxf4-_DLBeteZaKJVYN1nZUtBzJxjoN8J9_A5wrwbRHCXYPSGnB3dqjPF83mCmctVGGisvDeinQKUXuqwBomzpr8iw17Gt_lcJYHSYycuFuWd8hXR6I4ojLaHFh2Je8T8; __hd_ss=1563049450143; jalan__zc_us=5d2a3dee6461dc0d7d315a19.0.1.1563049454534; history=JalanRH4sIAAAAAAAAAGXMyRGAQAwDwWBIQIeF18Fs%2FmlQ8AP07dI4q5XjHg6Bg2YhCrA9AH5msrh9Dtb5M1i9Lab0NWXltoo%2FTXKBznYTejdRsub5dfW8TRwGfmzla3EBF8L8n0DfAAAA; JSESSIONID=2C435F9BA30A8FE42F158F686C93A9F6.2201; s_pers=%20s_cap_id%3D%7C1626122353295%3B%20s_fid%3D39D02748E30F70B2-3BACD791E1C8E91A%7C1626208760381%3B%20s_cm%3D1%7C1563052160423%3B; s_sess=%20s_cc%3Dtrue%3B%20s_sq%3D%3B; JalanSession01=BH_ol1nH__f-gXcD95IhYI6XOtlNjPcJjsNg8PpHxn7zXo3nRl-s5BAvcjp8C3d7LqQP8Uy2ujcWu5WLagCkn8qO-DhUDAYlYcOpTbFj0ccjcG9SESjjOAnIwCQ0buXTNYjlmL2NAlMDc3QkoOyp5EVRoaqoN6cTw9wSOCKxs8z5M3sDf8BAQBwvglhDwnRI5_uCuoDLRKIJBEdSAuLrknN8EF9w4CDEpQMF7f6AA-aPq4YQukGyJa1_sxf5ZVBf6aEzml3A1Mmbg5-9YIevYhrhyiXtTSCukPqjB8vNHZzzzieHVSGJXeV4BgxzrvaakGbbcGBo_kZaJVN-lchKr9nCP0HUCx9rqts069Y0ArrMzndPHXfMgmasSy1Fx4Mr8BlNm6dBtp5cZ-t8xYvKsKR44VDOIHxa0CP4fmFvd0tc1BOFx4wcSPnZyCV-cust90W8VxUsqF7YoWIZjKp8T7lQRvUlRy3d8dfOgpjy0MgocN4cuR9tsBI8yAFNxDGJOifLxd4cJ3z4zn2dqQYF4gwGFcTHuP8xQIFVXzQ8NitPohNXLe51tBM37Gqz1dUA-eyqrPmszs_KndBwAG8jnkeiOLtfP7-sZ0t53h_jk1VqJSx2MYccmDmGur7IUxSeUF-471915pN_4QSkRYG9RD8YQnyAHsxtRpUtq6nBs5AHvl2oZcECczO_H8zr2g8CPQHC7-0QVYpmCYbxJWf7DT1UdV8FFB8wX46GRjRohQSE; TAGKNIGHT_CONTROL_CLUSTER=87; _dc_gtm_UA-46996026-2=1; _gat_MyTracker=1; criteo_write_test=ChUIBBINbXlHb29nbGVSdGJJZ'
             }
        session = requests.session()
        res = session.get(url)
        #res = session.get(url, headers=headers)
        #jar = http.cookiejar.CookieJar()
        #res = requests.get(url, cookies=jar)
        cookies = res.cookies
        #print("cookies", cookies)
        #print(res.text)
        #print(res.content)
        soup = BeautifulSoup(res.content, "html.parser")
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
            inn_url = "https://www.jaran.net"+yad_num.get("href")
            #session.headers.update({'referer': url})
            #inn_res = session.get(inn_url, headers=headers, cookies=cookies)
            #inn_res = requests.get(inn_url, headers={'referer': url}, cookies=cookies)
            #inn_res = requests.get(inn_url, headers={'referer': url})
            #inn_res = requests.get(inn_url, cookies=cookies)
            #inn_res = requests.get(inn_url)
            #inn_res = requests.get(inn_url, headers={'Host': 'www.jalan.net'})
            #print(inn_res.content)
            inn_one = inn_one + scrapeInnHtml(inn_url, session, headers, cookies)
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

    #url = "https://www.jalan.net/onsen/OSN_50137.html"
    url = "https://www.jalan.net/onsen/OSN_50651.html"
    url = "https://www.jalan.net/onsen/OSN_50019.html"
    inn_data = scrapeOnsenHtml(url)
    print(inn_data)
    print(len(inn_data))
    print(len(inn_data[0]))
