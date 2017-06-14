#!/bin/bash
echo "please input you mesos-master's ipv4 address"
read ip
mkdir -p /var/log/mesos/mesos-agent/
nohup /opt/mesos/mesos-1.2.0/build/bin/mesos-agent.sh  --master=$ip:5050 --work_dir=/var/lib/mesos --containerizers=docker,mesos > /var/log/mesos/mesos-agent/log 2>&1 &
