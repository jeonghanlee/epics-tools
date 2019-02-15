#!/bin/sh

export JAVA_HOME=/home/train/epics-tools/lib/jvm/jdk-11.0.2
export PATH="$JAVA_HOME/bin:$PATH"

V="0.0.1-SNAPSHOT"

JAR="service-alarm-logger-0.0.1-SNAPSHOT.jar"

cd /home/train/epics-tools/clients/phoebus/services/alarm-logger/target/
java -jar $JAR "$@"
