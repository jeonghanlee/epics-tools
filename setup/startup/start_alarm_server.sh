#!/bin/sh

export JAVA_HOME=~/epics-tools/lib/jvm/jdk-11.0.2
export PATH="$JAVA_HOME/bin:$PATH"

V="0.0.1"

JAR="service-alarm-server-${V}.jar"

cd /home/train/epics-tools/clients/phoebus/services/alarm-server/target/service-alarm-server-0.0.1-SNAPSHOT.jar
java -jar $JAR "$@"
