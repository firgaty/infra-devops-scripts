SCRIPT_PATH=$(dirname $(realpath -s $0))
ZOOKEEPER_VERSION=3.7.1
ZOOKEEPER_CONF=${SCRIPT_PATH}/../resources/zoo.cfg
ZOOKEEPER_SYSTEMD=${SCRIPT_PATH}/../resources/zookeeper.service

cd /opt
wget https://dlcdn.apache.org/zookeeper/zookeeper-${ZOOKEEPER_VERSION}/apache-zookeeper-${ZOOKEEPER_VERSION}-bin.tar.gz
tar -xvzf /opt/apache-zookeeper-${ZOOKEEPER_VERSION}-bin.tar.gz
mv /opt/apache-zookeeper-${ZOOKEEPER_VERSION}-bin zookeeper

# COPY CONF
cp ${ZOOKEEPER_CONF} /opt/zookeeper/conf/zoo.cfg

chown -R zookeeper:zookeeper /opt/zookeeper

mkdir -p /data/zookeeper
chown -R zookeeper:zookeeper /data/zookeeper

# Create SystemD service
cp ${ZOOKEEPER_SYSTEMD} /etc/systemd/system/zookeeper.service

systemctl daemon-reload
systemctl start zookeeper
systemctl enable zookeeper