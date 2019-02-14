#!/bin/sh

# set the java and maven env variables
export JAVA_HOME=~/epics-tools/lib/jvm/jdk-11.0.2
export PATH="$JAVA_HOME/bin:$PATH"

export MVN_HOME=~/epics-tools/lib/apache-maven-3.6.0
export PATH="$MVN_HOME/bin:$PATH"

# install channelfinder
if [ ! -d ~/epics-tools/services/ChannelFinder-SpringBoot ]; then
    cd ~/epics-tools/services
    git clone https://github.com/shroffk/ChannelFinder-SpringBoot.git
fi
cd ~/epics-tools/services/ChannelFinder-SpringBoot
git pull

# build phoebus
mvn clean install -DskipTests=true

# At the end of this we have built and installed channelfinder
