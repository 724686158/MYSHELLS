#!/bin/bash
echo 'please input the address([ip|hostname]:[port]) of marathon'
read address
find .   -name "*.json" -print
echo 'please input the json filename which you want post'
read filename
curl -i -H 'Content-Type: application/json' $address/v2/apps -d@$filename
