#!/bin/sh

export JAVA_HOME=/home/train/epics-tools/lib/jvm/jdk-11.0.2
export PATH="$JAVA_HOME/bin:$PATH"

V="0.0.1-SNAPSHOT"

JAR="service-alarm-server-${V}.jar"

cd /home/train/epics-tools/clients/phoebus/services/alarm-server/target
java -jar $JAR "$@"
