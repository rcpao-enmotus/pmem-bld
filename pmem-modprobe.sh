#!/bin/bash

# pmem-modprobe.sh

# 4 * 8GB RDIMMs + 2 * 8GB NVDIMM
# BIOS-e820: [mem 0x0000000880000000-0x0000000c7fffffff] unknown-12
sudo modprobe pmem map=16G\@34G

exit

# 2 * 8GB RDIMMs + 1 * 4GB NVDIMM

#[  741.775190] DEBUG pmem_init 346: map='4G$18G'
#[  741.775194] DEBUG pmem_init 354: p='4G$18G'
#[  741.775196] DEBUG pmem_parse_map_one 321: p='$18G'
#[  741.775197] DEBUG pmem_parse_map_one 322: size='4294967296'
#[  741.775198] DEBUG pmem_parse_map_one 330: start='0x00000480000000'
#[  741.775202] add_persistent_memory: request_mem_region_exclusive phys=0x480000000 size=0x100000000 failed

#sudo modprobe pmem map=4G\$18G
sudo modprobe pmem map=4G\@18G
