#!/bin/bash
mkdir /opt/mesos
cd /opt/mesos
wget http://www.apache.org/dist/mesos/1.2.0/mesos-1.2.0.tar.gz
tar -zxf mesos-1.2.0.tar.gz
apt-get update
apt-get install -y tar wget git
apt-get install -y openjdk-8-jdk
apt-get install -y autoconf libtool
apt-get -y install build-essential python-dev python-virtualenv libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev
cd /opt/mesos/mesos-1.2.0
mkdir build
cd build
apt install zlib1g-dev 
../configure
make check
make install
