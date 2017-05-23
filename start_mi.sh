#!/bin/bash
#echo "please input the mi_manager's version"
#read ver
time=$(date +%s)
docker run --name mi_$time --net=host -d mi:v5

