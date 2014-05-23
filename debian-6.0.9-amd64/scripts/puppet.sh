#!/bin/bash

wget --no-check-certificate \
    'http://apt.puppetlabs.com/puppetlabs-release-squeeze.deb' \
    -O /tmp/puppetlabs-release-squeeze.deb
dpkg -i /tmp/puppetlabs-release-squeeze.deb

apt-get update
apt-get install facter puppet -y
