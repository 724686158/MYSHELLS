#!/bin/bash
export node1_hostname=Holic
export node1_ip=192.168.139.239
export node2_hostname=ASUKA
export node2_ip=192.168.210.3


export node_now_name=node
export node_now_ip=0.0.0.0
if [ "$HOSTNAME" = $node1_hostname ];then
node_now_name="node1"
fi
if [ "$HOSTNAME" = $node2_hostname ];then
node_now_name="node2"
fi
#docker rm -f mongo
docker rm -f "mongo_$node_now_name"
#docker run --name "mongo_$node_now_name" -v /home/core/mongo-files/db/:/data/db -v /home/core/:/opt/keyfile --hostname="$node_now_name.example.com" --add-host node1_ip.example.com:${node1_ip} --add-host node2_ip.example.com:${node2_ip} -p 27017:27017 -d daocloud.io/library/mongo:3.4.2 --smallfiles --keyFile /opt/keyfile/mongodb-keyfile --replSet "rs0"
docker run --name "mongo_$node_now_name" -v /mongodb/db20170328/:/data/db --hostname="$node_now_name.example.com" --add-host node1_ip.example.com:${node1_ip} --add-host node2_ip.example.com:${node2_ip} -p 27017:27017 -d daocloud.io/library/mongo:3.4.2 --smallfiles  --replSet "rs0"
