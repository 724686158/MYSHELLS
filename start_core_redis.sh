#!/bin/bash
echo 'please input your port'
read port
docker rm -f redis_server
docker run --restart=always --name redis_server -v /redisdb/20170611:/data -d -p $port:6379 -m 2g redis:3.2.8 --appendonly yes

