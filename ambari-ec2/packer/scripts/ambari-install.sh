#!/bin/bash -eux

wget -P /etc/apt/sources.list.d/ http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.2.0.0/ambari.list

# Add the key to authenticate Ambari package
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com B9733A7A07513CAD

apt-get update -y && apt-get dist-upgrade -y


# Install Ambari server
apt-get install -y ambari-server
ambari-server setup --slient
ambari-server start