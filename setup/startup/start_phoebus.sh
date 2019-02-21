#!/bin/sh

export JAVA_HOME=/home/train/epics-tools/lib/jvm/jdk-11.0.2
export PATH="$JAVA_HOME/bin:$PATH"

export MVN_HOME=/home/train/epics-tools/lib/apache-maven-3.6.0
export PATH="$MVN_HOME/bin:$PATH"

cd /home/train/epics-tools/clients/phoebus/phoebus-product/target


JAR=product-0.0.1-SNAPSHOT.jar

OPT="-settings /home/train/epics-tools/setup/settings/phoebus.ini"

# To get one instance, use server mode
#OPT="$OPT -server 4918"

JDK_JAVA_OPTIONS=" -DCA_DISABLE_REPEATER=true"
JDK_JAVA_OPTIONS="$JDK_JAVA_OPTIONS -Dnashorn.args=--no-deprecation-warning"
JDK_JAVA_OPTIONS="$JDK_JAVA_OPTIONS -Djdk.gtk.verbose=false -Djdk.gtk.version=2 -Dprism.forceGPU=true"
JDK_JAVA_OPTIONS="$JDK_JAVA_OPTIONS -Dlogback.configurationFile=/home/train/epics-tools/setup/settings/logback.xml"
JDK_JAVA_OPTIONS="$JDK_JAVA_OPTIONS -Dorg.csstudio.javafx.rtplot.update_counter=false"
export JDK_JAVA_OPTIONS

java -jar $JAR $OPT $SETTINGS "$@" &
