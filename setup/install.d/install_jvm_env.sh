#!/bin/sh

# install jdk 11
wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz -O /tmp/openjdk-11+28_linux-x64_bin.tar.gz
mkdir -p /opt/lib/jvm
tar xfvz /tmp/openjdk-11+28_linux-x64_bin.tar.gz --directory /opt/lib/jvm

# install maven
wget http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz -O /tmp/apache-maven-3.6.0-bin.tar.gz
tar xzvf /tmp/apache-maven-3.6.0-bin.tar.gz --directory /opt/lib
  
