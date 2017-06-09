#!/bin/bash
echo 'Please input the address of private registry(like: 192.168.139.239:5000)'
read addr
docker images
echo 'Please input the image which you want to push(like: python:2.7)'
read image
echo 'input new name(like Mypython:2.7)'
read newname
docker tag $image $addr/$newname
docker push $addr/$newname
