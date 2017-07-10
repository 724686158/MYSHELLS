#! /bin/bash
docker rm -f mi_001
docker run -e TZ='Asia/Shanghai'  --name mi_001 --net=host -d mi:v12
docker rm -f mi_002
docker run -e TZ='Asia/Shanghai'  --name mi_002 --net=host -d mi:v12
docker rm -f mi_003
docker run -e TZ='Asia/Shanghai'  --name mi_003 --net=host -d mi:v12
docker rm -f mi_004
docker run -e TZ='Asia/Shanghai'  --name mi_004 --net=host -d mi:v12
