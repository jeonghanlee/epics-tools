#!/bin/sh
export ARCHAPPL_PERSISTENCE_LAYER="org.epics.archiverappliance.config.persistence.JDBM2Persistence"
export ARCHAPPL_PERSISTENCE_LAYER_JDBM2FILENAME="/home/train/epics-tools/services/archapp/config/archappl.jdbm2"
export JAVA_HOME=/home/train/epics-tools/lib/jvm/java-se-8u40-ri/

PATH=$JAVA_HOME/bin:$PATH

cd /home/train/epics-tools/services/archapp/
/home/train/epics-tools/services/archapp/quickstart.sh /home/train/epics-tools/services/archapp/apache-tomcat-7.0.92.tar.gz

