#! /bin/bash
docker rm -f mi_manager_server
docker run -e TZ='Asia/Shanghai' --restart=always --name mi_manager_server --net=host -d mi_manager:v9
