#!/bin/sh

# set the java and maven env variables
export JAVA_HOME=~/epics-tools/lib/jvm/jdk-11.0.2
export PATH="$JAVA_HOME/bin:$PATH"

export MVN_HOME=~/epics-tools/lib/apache-maven-3.6.0
export PATH="$MVN_HOME/bin:$PATH"

# install phoebus
if [ ! -d ~/epics-tools/clients/phoebus ]; then
    cd ~/epics-tools/clients
    git clone https://github.com/shroffk/phoebus.git
fi
cd ~/epics-tools/clients/phoebus
git pull

# build phoebus
mvn clean install -DskipTests=true

# At the end of this we have built phoebus, the training product, the alarm server, the alarm logger service, the alarm config logger service
