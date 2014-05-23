#!/bin/bash

apt-get clean
apt-get autoclean

lvcreate -l 100%FREE -n dummy vg0
mkfs.ext4 /dev/vg0/dummy
mount /dev/vg0/dummy /mnt

for i in / /boot /mnt /tmp /var
do
    dd if=/dev/zero of=${i}/EMPTY bs=1M
    rm $i/EMPTY
done

umount /mnt
lvremove -f /dev/vg0/dummy
sync
