#!/bin/sh
# Download third party tools and services needed for the epics tools and services

mkdir -p /opt/lib/jvm
# download jdk 11
if [ ! -d /opt/lib/jvm/jdk-11.0.2 ]; then
    wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz -O /tmp/openjdk-11+28_linux-x64_bin.tar.gz
fi
tar xfvz /tmp/openjdk-11+28_linux-x64_bin.tar.gz --directory /opt/lib/jvm
rm /tmp/openjdk-11+28_linux-x64_bin.tar.gz

if [ ! -d /opt/lib/jvm/java-se-8u40-ri ]; then
    wget https://download.java.net/openjdk/jdk8u40/ri/openjdk-8u40-b25-linux-x64-10_feb_2015.tar.gz -O /tmp/openjdk-8u40-b25-linux-x64-10_feb_2015.tar.gz
fi
tar xfvz /tmp/openjdk-8u40-b25-linux-x64-10_feb_2015.tar.gz --directory /opt/lib/jvm
rm /tmp/openjdk-8u40-b25-linux-x64-10_feb_2015.tar.gz

# download maven
if [ ! -d /opt/lib/apache-maven-3.6.0 ]; then
    wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz -O /tmp/apache-maven-3.6.0-bin.tar.gz
fi
tar xzvf /tmp/apache-maven-3.6.0-bin.tar.gz --directory /opt/lib
rm /tmp/apache-maven-3.6.0-bin.tar.gz

# download elastic
if [ ! -d /opt/elasticsearch-6.3.1 ]; then
    wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.3.1.tar.gz -O /tmp/elasticsearch-6.3.1.tar.gz
fi
tar xzvf /tmp/elasticsearch-6.3.1.tar.gz --directory /opt
rm /tmp/elasticsearch-6.3.1.tar.gz

# download kafka
if [ ! -d /opt/kafka_2.11-2.1.0 ]; then
    wget http://mirrors.sonic.net/apache/kafka/2.1.0/kafka_2.11-2.1.0.tgz -O /tmp/kafka_2.11-2.1.0.tgz
fi
tar xzvf /tmp/kafka_2.11-2.1.0.tgz --directory /opt
rm /tmp/kafka_2.11-2.1.0.tgz

# download appliance archiver
mkdir -p /opt/archapp
if [ ! -f /tmp/archappl_v0.0.1_SNAPSHOT_09-October-2018T15-49-47.tar.gz ]; then
    wget https://github.com/slacmshankar/epicsarchiverap/releases/download/v0.0.1_SNAPSHOT_09-Oct-2018/archappl_v0.0.1_SNAPSHOT_09-October-2018T15-49-47.tar.gz -O /tmp/archappl_v0.0.1_SNAPSHOT_09-October-2018T15-49-47.tar.gz
fi
tar xzvf /tmp/archappl_v0.0.1_SNAPSHOT_09-October-2018T15-49-47.tar.gz --directory /opt/archapp
rm /tmp/archappl_v0.0.1_SNAPSHOT_09-October-2018T15-49-47.tar.gz
# download apache tomcat
if [ ! -f /opt/archapp/archappl_v0.0.1_SNAPSHOT_09-October-2018T15-49-47.tar.gz ]; then
    wget http://www.gtlib.gatech.edu/pub/apache/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz -O /tmp/apache-tomcat-7.0.92.tar.gz
fi
tar xzvf /tmp/apache-tomcat-7.0.92.tar.gz --directory /opt/archapp
rm /tmp/apache-tomcat-7.0.92.tar.gz

#glassfish EE server
if [ ! -f /opt/glassfish3 ]; then
    wget http://download.oracle.com/glassfish/3.1.2.2/release/glassfish-3.1.2.2.zip -O /tmp/glassfish-3.1.2.2.zip
fi
unzip /tmp/glassfish-3.1.2.2.zip --directory /opt
rm /tmp/glassfish-3.1.2.2.zip

