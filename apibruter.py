#!/bin/python3

import requests

for api_key in range (1,100,2):
    print ("api key:" + str(api_key) )
    #enter IP target below
    html = requests.get(f'http://<ENTER IP ADDRESS>/api/{api_key}')
    print (html.text)
