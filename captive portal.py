#!/bin/python3
from django.db import connection
import requests
import os
import time, datetime

def jsTime():
   return int(time.time() * 1000)

print(jsTime())

url = "http://10.135.24.1:8090/login.xml"


payload = ""
headers = {
    "Host": "10.135.24.1:8090",
    "User-Agent": "Mozilla/5.0 (X11; Linux x86_64; rv:106.0) Gecko/20100101 Firefox/106.0",
    "Accept-Encoding": "gzip, deflate",
    "Content-Type": "application/x-www-form-urlencoded",
    "Content-Length": "77",
    "Origin": "http://10.135.24.1:8090",
    "Connection": "keep-alive",
    "Referer": "http://10.135.24.1:8090/httpclient.html"
}
def login(count):
    a=jsTime()
    querystring = {"mode":"191","username":"casweb","password":"Casper@1327","a":a,"producttype":"0"}
    #
    print(querystring)
    print(f"{count}retrying at{a} ")
    response=""
    try:
        response = requests.request("POST", url, data=payload, headers=headers, params=querystring)
    except: 
        count = count+1
        print(f"{count}\n")
        print(response)
        print("\nconnection closed\n")
        response=login(count)

    return response

count=0
while True:
    count=count+1
    response=login(count)
    print(f"{count}\n")
    print(response)
    print("\nconnection closed\n")
        
    
