#!/bin/bash
echo "please input the mi_mysql's port"
read port
docker run --name mysql$port -p $port:3306 -v /mysql/own/datadir/$port:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=mi -d daocloud.io/library/mysql:5.7
