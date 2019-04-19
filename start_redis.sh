#!/bin/bash
docker rm -f redis_server
docker run --restart=always --name redis_server -v /redisdb/xxjs:/data -d -p 172.16.38.169:6379:6379 redis:3.2.8 --appendonly yes
