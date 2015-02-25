#!/bin/bash

wget --no-check-certificate \
    'http://apt.puppetlabs.com/puppetlabs-release-trusty.deb' \
    -O /tmp/puppetlabs-release-trusty.deb
dpkg -i /tmp/puppetlabs-release-trusty.deb

apt-get update
apt-get install facter puppet -y
