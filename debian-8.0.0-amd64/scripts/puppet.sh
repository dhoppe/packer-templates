#!/bin/bash

# Bug: https://tickets.puppetlabs.com/browse/CPR-75
#wget --no-check-certificate \
#    'http://apt.puppetlabs.com/puppetlabs-release-testing.deb' \
#    -O /tmp/puppetlabs-release-testing.deb
#dpkg -i /tmp/puppetlabs-release-testing.deb

wget --quiet -O - http://apt.puppetlabs.com/pubkey.gpg | apt-key add -
cat > /etc/apt/sources.list.d/puppetlabs.list << EOF
# Puppetlabs products
deb http://apt.puppetlabs.com testing main
deb-src http://apt.puppetlabs.com testing main

# Puppetlabs dependencies
deb http://apt.puppetlabs.com testing dependencies
deb-src http://apt.puppetlabs.com testing dependencies

# Puppetlabs devel (uncomment to activate)
# deb http://apt.puppetlabs.com testing devel
# deb-src http://apt.puppetlabs.com testing devel
EOF

apt-get update
apt-get install facter puppet -y
