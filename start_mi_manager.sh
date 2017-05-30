#!/bin/bash
docker images
echo "please input the mi_manager's version"
read ver
docker rm -f mi_manager_server
docker run --restart=always --name mi_manager_server --net=host -d mi_manager:$ver
