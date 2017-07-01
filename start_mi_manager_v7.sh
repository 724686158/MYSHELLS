#! /bin/bash
docker rm -f mi_manager_server
docker run --restart=always --name mi_manager_server --net=host -d mi_manager:v7
