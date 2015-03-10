#!/bin/bash

CWDIR=`pwd`
DSTDIR=../prd

if [ ! -d $DSTDIR ]; then
	git clone https://github.com/01org/prd $DSTDIR
else
	pushd prd
	git pull
	popd
fi

cd $DSTDIR
# cp /boot/config-`uname -r` .config
cp /boot/config-2.6.32-431.el6.x86_64 .config
# cp /boot/config-2.6.32-504.3.3.el6.x86_64 .config

cat << EOF >> .config
CONFIG_BLK_DEV_PMEM=m
CONFIG_BLK_DEV_PMEM_IGNORE_REQUEST_MEM_RET=y
EOF

git apply $CWDIR/prd-20150204a.patch
patch -p1 -i $CWDIR/prd-20150210a-blk_queue_max_segment_size.patch

make olddefconfig
make -j10
sudo make modules_install
sudo make install
