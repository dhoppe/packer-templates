#!/bin/bash

wget --no-check-certificate \
    'http://apt.puppetlabs.com/puppetlabs-release-wheezy.deb' \
    -O /tmp/puppetlabs-release-wheezy.deb
dpkg -i /tmp/puppetlabs-release-wheezy.deb

apt-get update
apt-get install facter puppet -y
