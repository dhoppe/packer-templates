#!/bin/bash

wget --no-check-certificate \
    'http://apt.puppetlabs.com/puppetlabs-release-pc1-wheezy.deb' \
    -O /tmp/puppetlabs-release-pc1-wheezy.deb
dpkg -i /tmp/puppetlabs-release-pc1-wheezy.deb

apt-get update
apt-get install puppet-agent -y

for i in `ls /opt/puppetlabs/bin`
do
    ln -s /opt/puppetlabs/bin/${i} /usr/bin/${i}
done
