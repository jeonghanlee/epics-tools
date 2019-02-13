
# install phoebus
sudo mkdir /opt/phoebus
export PHOEBUS_HOME=/opt/phoebus
cd $PHOEBUS_HOME

git clone https://github.com/shroffk/phoebus.git
cd phoebus
mvn clean install -DskipTests=true

cd $PHOEBUS_HOME
git clone https://github.com/shroffk/training-phoebus.git
cd training-phoebus
mvn clean install -DskipTests=true
