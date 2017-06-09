#!/bin/bash
ip=C ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | grep -v '172.17.0.1'  | cut -d: -f2 | awk '{ print $1}'
nohup /opt/zookeeper-3.3.6/bin/zkServer.sh start > /var/log/zookeeper/log 2>&1 &
nohup /opt/mesos-1.2.0/build/bin/mesos-master.sh --ip=$ip --zk=zk://$ip:2181/mesos --work_dir=/var/lib/mesos --log_dir=/var/log/mesos  --quorum=1 > /var/log/mesos/mesos-master/log.out 2>&1 &
nohup /opt/mesos-1.2.0/build/bin/mesos-agent.sh  --master=$ip:5050 --work_dir=/var/lib/mesos --containerizers=docker,mesos > /var/log/mesos/mesos-agent/log 2>&1 &
nohup /opt/marathon-1.4.3/bin/start --master zk://$ip:2181/mesos --zk zk://$ip:2181/marathon > /var/log/marathon/log 2>&1 &
