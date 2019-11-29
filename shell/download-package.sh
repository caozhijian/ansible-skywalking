#!/bin/bash
# Program: 下载软件包
# Author iamwanglibing@qq.com
source ../color.sh
workPath=$(pwd)

# 下载 elasticsearch-head
cd $workPath
cd ../roles/elasticsearch-head/files/
if [ ! -f "elasticsearch-head.tar.gz" ]; then 
    wget -c https://github.com/mobz/elasticsearch-head/archive/v5.0.0.tar.gz -O elasticsearch-head.tar.gz
else
    eblueEcho "elasticsearch-head 文件已存在，无需下载"
fi

# 下载 elasticsearch6.x
cd $workPath
cd ../roles/elasticsearch6.x/files/
if [ ! -f "elasticsearch-6.8.5.rpm" ]; then 
    wget -c https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.8.5.rpm -O elasticsearch-6.8.5.rpm
else
    blueEcho "elasticsearch-6.8.5.rpm 文件已存在，无需下载"
fi

# 下载 elasticsearch7.x
cd $workPath
cd ../roles/elasticsearch7.x/files/
if [ ! -f "elasticsearch-7.4.2-x86_64.rpm" ]; then 
    wget -c https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.4.2-x86_64.rpm -O elasticsearch-7.4.2-x86_64.rpm
else
    blueEcho "elasticsearch-7.4.2-x86_64.rpm 文件已存在，无需下载"
fi

# 下载 jdk1.8
cd $workPath
cd ../roles/jdk/files/
if [ ! -f "jdk-8u131-linux-x64.rpm" ]; then 
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
else
    blueEcho "jdk-8u131-linux-x64.rpm 文件已存在，无需下载"
fi

# 下载 node.js 
cd $workPath
cd ../roles/nodejs/files/
if [ ! -f "node-v12.13.1-linux-x64.tar.xz" ]; then 
    wget -c https://nodejs.org/dist/v12.13.1/node-v12.13.1-linux-x64.tar.xz -O node-v12.13.1-linux-x64.tar.xz
else
    blueEcho "node-v12.13.1-linux-x64.tar.xz 文件已存在，无需下载"
fi

# 下载 skywalking6.x
cd $workPath
cd ../roles/skywalking6.x/files/
if [ ! -f "apache-skywalking-apm-6.5.0.tar.gz" ]; then 
    wget -c https://www.apache.org/dyn/closer.cgi/skywalking/6.5.0/apache-skywalking-apm-6.5.0.tar.gz -O apache-skywalking-apm-6.5.0.tar.gz
else
    blueEcho "apache-skywalking-apm-6.5.0.tar.gz 文件已存在，无需下载"
fi





