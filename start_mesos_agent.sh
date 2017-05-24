#!/bin/bash
echo "please input you mesos-master's ipv4 address"
read ip
nohup /opt/mesos-1.2.0/build/bin/mesos-agent.sh  --master=$ip:5050 --work_dir=/var/lib/mesos > /var/log/mesos/mesos-agent/log 2>&1 &
