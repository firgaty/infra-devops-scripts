# Setup Zookeeper
useradd zookeeper -m
usermod --shell /bin/bash zookeeper
passwd zookeeper
usermod -aG sudo zookeeper