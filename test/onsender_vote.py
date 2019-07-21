# -*- coding: utf-8 -*-
# login.py
from bs4 import BeautifulSoup
from requests.exceptions import ConnectionError
import requests
import json
import sys

class OnsenderVote:
    def __init__(self):
        '''self.username = "apple"
        self.email = "apple@example.com"
        self.password = "appleappleapple"'''
        '''self.username = "rakuten"
        self.email = "rakuten@example.com"
        self.password = "rakutenrakutenrakuten"'''
        self.username = "amazon"
        self.email = "amazon@example.com"
        self.password = "amazonamazonamazon"
        #self.username = "huawei"
        #self.password = "huaweihuaweihuawei"
        #self.csrf_token = "ZQ1Ic82ju13t1nA9ABqQuKaFFTfvUgY3d8hYXJeMpNAA96gXRtHt0EiO9T3Z7uRR"
        self.csrf_token = ""
        #self.id = "4"

    def vote(self, id):
        session = requests.Session()

        headers = {
            #"User-Agent": "Mozilla/5.0",
            #"Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
            #"Accept-Language": "ja,en-US;q=0.7,en;q=0.3",
            #"Content-Type": "application/json",
            #"Referer": "https://twitter.com/",
            #"Host": "localhost:8000",
            #"Origin": "https://localhost:8000",
            #"Upgrade-insecure-requests": "1"
            #"Referer": "",
            #"Authorization": ""
        }

        payload_login = {
            "csrfmiddlewaretoken": "",
            "username": "",
            "email": "",
            "password": "",
            #"cookies": "",
        }

        payload_upvote = {
            "id": "",
        }

        #payload_login['username'] = self.username
        #payload_login['password'] = self.password

        '''try: 
            response = session.get('http://localhost:8000/api/rest-auth/login/', headers=headers, data=payload_login, allow_redirects=False)
            soup = BeautifulSoup(response.text, "html.parser")
            print(soup.prettify())
            csrf_token = soup.find(attrs={'name': 'csrfmiddlewaretoken'}.get('value'))
            #csrf_token = soup.find(attrs={'name': 'csrfmiddlewaretoken'})
            print("csrf_token", csrf_token)

        except ConnectionError:
            print("[*] Can't connect to Onsender.")
            sys.exit()'''

        payload_login['csrfmiddlewaretoken'] = self.csrf_token
        payload_login['username'] = self.username
        payload_login['email'] = self.email
        payload_login['password'] = self.password
        #print("key", auth_token)
        #print("headers", headers)
        #print(payload_login)

        try:
            login = session.post('http://localhost:8000/api/rest-auth/login/', headers=headers, data=payload_login)
            cookies = login.cookies
            print("cookies", cookies)
            response_json = json.loads(login.text)
            print(response_json)
            auth_token = response_json['key']
            print("key", auth_token)
            if login.status_code == 302 or login.status_code == 200:
                print("[+] Loggined successfully, HTTP Status Code: %d" % login.status_code)
            else:
                print("[+] Failed to vote, HTTP Status Code: %d" % login.status_code)

        except:
            print("[+] An error occurred in the middle of the login.")
        #payload_upvote['id'] = self.id
        payload_upvote['id'] = id
        headers['Authorization'] = "Token " + auth_token
        #headers['Referer'] = "http://localhost:8000/api/rest-auth/login/"
        try:
            #upvote = session.post('http://localhost:8000/api/votes/up/?id='+self.id, headers=headers, data=payload_upvote, allow_redirects=False, cookies=cookies)
            upvote = session.post('http://localhost:8000/api/votes/up/?id='+str(id), headers=headers, data=payload_upvote, allow_redirects=False, cookies=cookies)
            if upvote.status_code == 200:
                response_json = json.loads(upvote.text)
                message = response_json['message']
                print("[+] Voted successfully, HTTP Status Code: %d" % upvote.status_code)
                print("message", message)
            else:
                print("[+] Failed to vote, HTTP Status Code: %d" % upvote.status_code)
                print("message", message)

        except:
            print("[+] An error occurred in the middle of the voting.")

if __name__ == "__main__":
     onsender_vote = OnsenderVote()
     #onsender_vote.vote() 
     for i in range(25):
         onsender_vote.vote(i)
