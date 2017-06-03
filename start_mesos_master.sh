#!/bin/bash
echo "be sure your zookeeper is started"
echo "please input the master's ipv4 addr"
read ip
nohup /opt/mesos-1.2.0/build/bin/mesos-master.sh --ip=$ip --zk=zk://$ip:2181/mesos --work_dir=/var/lib/mesos --log_dir=/var/log/mesos  --quorum=1 > /var/log/mesos/mesos-master/log.out 2>&1 &
