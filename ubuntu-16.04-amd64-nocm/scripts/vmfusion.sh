#!/bin/bash

apt-get install linux-headers-$(uname -r) -y

mkdir -p /mnt/cdrom
mount -o loop /home/vagrant/linux.iso /mnt/cdrom
tar xfz /mnt/cdrom/VMwareTools-*.tar.gz -C /tmp/
/tmp/vmware-tools-distrib/vmware-install.pl -d
rm /home/vagrant/linux.iso
rm -rf /tmp/vmware-*
umount /mnt/cdrom
