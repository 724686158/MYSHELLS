#! /bin/bash
ver = "v11"
echo $ver
docker rm -f mi_001
docker run --restart=always --name mi_001 --net=host -d mi:v11
docker rm -f mi_002
docker run --restart=always --name mi_002 --net=host -d mi:v11
docker rm -f mi_003
docker run --restart=always --name mi_003 --net=host -d mi:v11
docker rm -f mi_004
docker run --restart=always --name mi_004 --net=host -d mi:v11
docker rm -f mi_005
docker run --restart=always --name mi_005 --net=host -d mi:v11
docker rm -f mi_006
docker run --restart=always --name mi_006 --net=host -d mi:v11
