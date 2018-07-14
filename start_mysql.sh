#!/bin/bash
echo "please input the mysql's port"
read port
echo "please input the root's password"
read password
docker run --restart=always --name mysql$port -p $port:3306 -v /mysql/own/datadir/$port:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$password -d daocloud.io/library/mysql:5.7
