#!/bin/bash

sudo mdadm -v --create /dev/md0 --chunk=32 --level=raid0 --raid-devices=2 /dev/pmem0 /dev/disk/by-id/ata-WDC_WD5000AAKX-001CA0_WD-WCAYUCF35571
sudo cat /proc/mdstat
sudo mdadm --detail --scan | sudo tee /etc/mdadm.conf-new
sudo mkfs.xfs -l size=64m -d agcount=4 -i attr=2,maxpct=5 -L Recordings /dev/md0 -f
# sudo echo "/dev/md0       /media/md0             xfs     defaults,allocsize=512m  0 0" | sudo tee /etc/fstab-md0
