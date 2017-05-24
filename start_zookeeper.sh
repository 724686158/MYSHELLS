#!/bin/bash
nohup /opt/zookeeper-3.3.6/bin/zkServer.sh start  > /var/log/zookeeper/log 2>&1 &
