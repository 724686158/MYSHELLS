#!/bin/bash
echo "please input you mesos-master's ipv4 address, and make ture zookeeper has opened"
read ip
nohup /opt/marathon-1.4.3/bin/start --master zk://$ip:2181/mesos --zk zk://$ip:2181/marathon --mesos_authentication --mesos_authentication_secret_file /tmp/mesos/config/marathon.secret --mesos_authentication_principal=marathon --mesos_role=marathon > /var/log/marathon/log 2>&1 
