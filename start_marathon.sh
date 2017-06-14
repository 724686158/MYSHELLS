#!/bin/bash
echo "please input you mesos-master's ipv4 address, and make ture zookeeper has opened"
read ip
mkdir -p /var/log/marathon/
nohup /opt/marathon-1.4.3/bin/start --master zk://$ip:2181/mesos --zk zk://$ip:2181/marathon > /var/log/marathon/log 2>&1 &
