#!/bin/bash

sed -i /etc/default/grub \
  -e "s/GRUB_CMDLINE_LINUX=\"\"/GRUB_CMDLINE_LINUX=\"biosdevname=0 net.ifnames=0 quiet\"/g"
grub-mkconfig -o /boot/grub/grub.cfg

sed /etc/network/interfaces -i -e 's/\enp0s3/eth0/g'
echo 'auto eth1' >> /etc/network/interfaces.d/eth1.cfg
echo 'iface eth1 inet manual' >> /etc/network/interfaces.d/eth1.cfg

mkdir /home/vagrant/.ssh
wget --no-check-certificate \
    'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub' \
    -O /home/vagrant/.ssh/authorized_keys
chown -R vagrant: /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
