#!/bin/bash
# 'dopehosting' change with your lvm group

# ./create-disk.sh 10G test


lvcreate -L $1 -n $2 /dev/dopehosting
mkfs.ext4 /dev/dopehosting/$2
echo "================================================="
echo "================================================="
echo "YOUR DISK UUID"
echo "================================================="
blkid | grep '$2'
echo "================================================="
echo "PUT IT INTO FSTAB LIKE"
ECHO 'UUID=fcde9bb7-4311-41e2-986a-647a672ebf83   /YOUR-DIR    ext4    defaults        0       2'
echo "================================================="
echo "================================================="
echo "Then"
echo "mkdir /YOUR-DIR"
echo "mount /YOUR-DIR"
echo "================================================="
