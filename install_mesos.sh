#!/bin/bash
mkdir /opt/mesos
cd /opt/mesos
wget http://www.apache.org/dist/mesos/1.2.0/mesos-1.2.0.tar.gz
tar -zxf mesos-1.2.0.tar.gz
sudo apt-get update
sudo apt-get install -y tar wget git
sudo apt-get install -y openjdk-7-jdk
sudo apt-get install -y autoconf libtool
sudo apt-get -y install build-essential python-dev python-virtualenv libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev
cd /opt/mesos/mesos-1.2.0
mkdir build
cd build
../configure
make check
make install
nohup /opt/mesos/mesos-1.2.0/build/bin/mesos-agent.sh  --master=192.168.210.152:5050 --work_dir=/var/lib/mesos &
