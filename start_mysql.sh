#!/bin/bash
echo "please input the mysql's port"
read port
echo "please input the root's password"
read password
mkdir -p /mysql/data

docker run --restart=always --name mysql$port -p 172.16.38.169:$port:3306 -v /mysql/data:/var/lib/mysql -v /etc/localtime:/etc/localtime -v /etc/mysql/mysql:/etc/mysql -e MYSQL_ROOT_PASSWORD=$password -d daocloud.io/library/mysql:5.7
