#!/bin/bash

export node1_hostname=Holic
export node1_ip=192.168.210.152
export node2_hostname=ASUKA
export node2_ip=192.168.139.239


export ip=0.0.0.0
if [ "$HOSTNAME" = $node1_hostname ];then
ip=$node1_ip
fi
if [ "$HOSTNAME" = $node2_hostname ];then
ip=$node2_ip
fi

docker rm -f redis_server
docker run --restart=always --name redis_server -v /redisdb/20170512:/data -d -p $ip:7001:6379 -m 8g redis:latest --appendonly yes
