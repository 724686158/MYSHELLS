#!/bin/bash
docker rm -f redis_server
docker run --restart=always --name redis_server -v /redisdb/20170611:/data -d -p 7001:6379 -m 10g redis:3.2.8 --appendonly yes
