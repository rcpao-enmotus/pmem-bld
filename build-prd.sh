#!/bin/bash

if [ ! -d prd ]; then
	git clone https://github.com/01org/prd
else
	cd prd
	git pull
	cd ..
fi

cd prd
# cp /boot/config-`uname -r` .config
cp /boot/config-2.6.32-431.el6.x86_64 .config
# cp /boot/config-2.6.32-504.3.3.el6.x86_64 .config

cat << EOF >> .config
CONFIG_BLK_DEV_PMEM=m
CONFIG_BLK_DEV_PMEM_IGNORE_REQUEST_MEM_RET=y
EOF

./prd-apply-patch.sh

make olddefconfig
make -j10
sudo make modules_install
sudo make install
