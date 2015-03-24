#!/bin/bash

CWDIR=`pwd`
DSTDIR=../pmem

if [ ! -d $DSTDIR ]; then
	git clone git://git.open-osd.org/pmem.git $DSTDIR
else
	pushd $DSTDIR
	git pull
#[rcpao@test27 pmem]$ git branch -a
#* pmem
#  remotes/origin/HEAD -> origin/pmem
#  remotes/origin/brd-partitions
#  remotes/origin/jens-for-next
#  remotes/origin/pmem
#  remotes/origin/pmem-jens-3.17-rc1
#  remotes/origin/ross-pmem
#[rcpao@test27 pmem]$ git rev-parse --verify HEAD
#3ae6642a5512cf27974dd8ef68c57bdc2fae9e1a
	popd
fi


cd $DSTDIR
# cp /boot/config-`uname -r` .config
cp /boot/config-2.6.32-431.el6.x86_64 .config
# cp /boot/config-2.6.32-504.3.3.el6.x86_64 .config

cat << EOF >> .config
CONFIG_BLK_DEV_PMEM=m
CONFIG_BLK_DEV_PMEM_USE_PAGES=y
CONFIG_BLK_DEV_PMEM_IGNORE_REQUEST_MEM_RET=y
EOF

make olddefconfig
make -j10
sudo make modules_install
sudo make install
