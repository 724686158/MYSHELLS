#!/bin/bash
docker images
echo "please input the version"
read ver
time=$(date +%s)
docker run --name mi_$time --net=host -d mi:$ver

