#!/bin/bash

# prd-modprobe.sh


# 1 * 8GB RDIMM
# /etc/grub.conf: memmap=length\\\$start
# /etc/grub.conf: memmap=4G\\\$2G fail nothing reserved
# /etc/grub.conf: memmap=4G\\\$4G fail nothing reserved
# /etc/grub.conf: memmap=2G\\\$6G pass
#BIOS-e820: [mem 0x0000000100000000-0x000000027fffffff] usable #4GiB-(10GiB-1)
#e820: remove [mem 0x80000000-0xfffffffffffffffe] usable
#user: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
#sudo modprobe pmem pmem_start_gb=6 pmem_size_gb=2 pmem_count=1

# 2 * 8GB RDIMM
# /etc/grub.conf: memmap=length\\\$start
# /etc/grub.conf: memmap=8G\\\$8G 
#BIOS-e820: [mem 0x0000000100000000-0x000000047fffffff] usable
#e820: remove [mem 0x200000000-0xfffffffffffffffe] usable
#user: [mem 0x0000000100000000-0x00000001ffffffff] usable
#sudo modprobe pmem pmem_start_gb=8 pmem_size_gb=8 pmem_count=1

# 3 * 8GB RDIMM
# /etc/grub.conf: memmap=length\\\$start
# /etc/grub.conf: memmap=8G\\\$16G 
#BIOS-e820: [mem 0x0000000100000000-0x000000067fffffff] usable
#e820: remove [mem 0x200000000-0xfffffffffffffffe] usable
#user: [mem 0x0000000100000000-0x00000001ffffffff] usable
#sudo modprobe pmem pmem_start_gb=16 pmem_size_gb=8 pmem_count=1

# 4 * 8GB RDIMM
# /etc/grub.conf: memmap=length\\\$start
# /etc/grub.conf: memmap=16G\\\$16G 
#sudo modprobe pmem pmem_start_gb=16 pmem_size_gb=16 pmem_count=1

# 8 * 8GB RDIMMs
#Linux version 4.0.0-rc2+ (rcpao@test27) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-11) (GCC) ) #3 SMP Tue Mar 10 09:28:16 PDT 2015
#Command line: ro root=/dev/mapper/vg_test27-lv_root rd_LVM_LV=vg_test27/lv_swap rd_NO_LUKS LANG=en_US.UTF-8 rd_NO_MD rd_LVM_LV=vg_test27/lv_root SYSFONT=latarcyrheb-sun16 crashkernel=128M  KEYBOARDTYPE=pc KEYTABLE=us rd_NO_DM memmap=30G\\\$34G 
#e820: BIOS-provided physical RAM map:
#BIOS-e820: [mem 0x0000000000000000-0x000000000009abff] usable
#BIOS-e820: [mem 0x000000000009ac00-0x000000000009ffff] reserved
#BIOS-e820: [mem 0x00000000000e0000-0x00000000000fffff] reserved
#BIOS-e820: [mem 0x0000000000100000-0x000000007df7bfff] usable
#BIOS-e820: [mem 0x000000007df7c000-0x000000007e0e3fff] reserved
#BIOS-e820: [mem 0x000000007e0e4000-0x000000007e2e8fff] ACPI NVS
#BIOS-e820: [mem 0x000000007e2e9000-0x000000007f362fff] reserved
#BIOS-e820: [mem 0x000000007f363000-0x000000007f7fffff] ACPI NVS
#BIOS-e820: [mem 0x0000000080000000-0x000000008fffffff] reserved
#BIOS-e820: [mem 0x00000000fed1c000-0x00000000fed3ffff] reserved
#BIOS-e820: [mem 0x00000000ff000000-0x00000000ffffffff] reserved
#BIOS-e820: [mem 0x0000000100000000-0x000000107fffffff] usable
#e820: remove [mem 0x780000000-0xfffffffffffffffe] usable
#sudo modprobe pmem pmem_start_gb=30 pmem_size_gb=32 pmem_count=1


# 4 * 8GB RDIMMs + 1 * 4GB NVDIMM
# /etc/grub.conf: memmap=length\\\$start
# /etc/grub.conf: memmap=30G\\\$34G
#e820: WARNING [mem 0x880000000-0x97fffffff] is unknown type 12
#BIOS-e820: [mem 0x0000000100000000-0x000000087fffffff] usable
#BIOS-e820: [mem 0x0000000880000000-0x000000097fffffff] unknown-12
#e820: remove [mem 0x780000000-0xfffffffffffffffe] usable
#user: [mem 0x0000000100000000-0x000000077fffffff] usable
#user: [mem 0x0000000880000000-0x000000097fffffff] unknown-12
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=4 pmem_count=1

# 4 * 8GB RDIMMs + 1 * 4GB NVDIMM + 3 * 8GB NVDIMM
# /etc/grub.conf: memmap=length\\\$start
# /etc/grub.conf: memmap=30G\\\$34G
#e820: WARNING [mem 0x880000000-0xf7fffffff] is unknown type 12
#BIOS-e820: [mem 0x0000000100000000-0x000000087fffffff] usable
#BIOS-e820: [mem 0x0000000880000000-0x0000000f7fffffff] unknown-12
#e820: remove [mem 0x780000000-0xfffffffffffffffe] usable
#user: [mem 0x0000000100000000-0x000000077fffffff] usable
#user: [mem 0x0000000880000000-0x0000000f7fffffff] unknown-12
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=28 pmem_count=1


# 4 * 8GB RDIMMs + 1 * 8GB NVDIMM
#Linux version 4.0.0-rc2+ (rcpao@test27) (gcc version 4.4.7 20120313 (Red Hat 4.4.7-11) (GCC) ) #3 SMP Tue Mar 10 09:28:16 PDT 2015
#Command line: ro root=/dev/mapper/vg_test27-lv_root rd_LVM_LV=vg_test27/lv_swap rd_NO_LUKS LANG=en_US.UTF-8 rd_NO_MD rd_LVM_LV=vg_test27/lv_root SYSFONT=latarcyrheb-sun16 crashkernel=128M  KEYBOARDTYPE=pc KEYTABLE=us rd_NO_DM memmap=30G\\\$34G 
#e820: WARNING [mem 0x880000000-0xa7fffffff] is unknown type 12
#BIOS-e820: [mem 0x0000000100000000-0x000000087fffffff] usable
#BIOS-e820: [mem 0x0000000880000000-0x0000000a7fffffff] unknown-12
#e820: remove [mem 0x780000000-0xfffffffffffffffe] usable
#user: [mem 0x0000000100000000-0x000000077fffffff] usable
#user: [mem 0x0000000880000000-0x0000000a7fffffff] unknown-12
# /etc/grub.conf: memmap=30G\\\$34G
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=8 pmem_count=1

# 4 * 8GB RDIMMs + 2 * 8GB NVDIMM
# /etc/grub.conf: memmap=length\\\$start
# /etc/grub.conf: memmap=30G\\\$34G
#BIOS-e820: [mem 0x0000000100000000-0x000000087fffffff] usable
#BIOS-e820: [mem 0x0000000880000000-0x0000000c7fffffff] unknown-12
#e820: remove [mem 0x780000000-0xfffffffffffffffe] usable
#user: [mem 0x0000000100000000-0x000000077fffffff] usable
#user: [mem 0x0000000880000000-0x0000000c7fffffff] unknown-12
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=8 pmem_count=1
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=16 pmem_count=1

# 4 * 8GB RDIMMs + 3 * 8GB NVDIMM
# /etc/grub.conf: memmap=length\\\$start
# /etc/grub.conf: memmap=30G\\\$34G
#BIOS-e820: [mem 0x0000000880000000-0x0000000c7fffffff] unknown-12
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=8 pmem_count=1
sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=16 pmem_count=1
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=24 pmem_count=1

# 4 * 8GB RDIMMs + 4 * 8GB NVDIMM
# /etc/grub.conf: memmap=length\\\$start
# /etc/grub.conf: memmap=30G\\\$34G
#BIOS-e820: [mem 0x0000000880000000-0x0000000c7fffffff] unknown-12
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=8 pmem_count=1
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=16 pmem_count=1
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=24 pmem_count=1
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=32 pmem_count=1
