#!/bin/bash
docker images
echo "please input the image's name"
read name
echo "please input the target's ipv4 address"
read ip
echo "please input the target's docker_username OR root"
read user
docker save $name | bzip2 | ssh $user@$ip 'cat | docker load'
