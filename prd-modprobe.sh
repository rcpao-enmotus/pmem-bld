#!/bin/bash

# prd-modprobe.sh

# 4 * 8GB RDIMMs + 2 * 8GB NVDIMM
#BIOS-e820: [mem 0x0000000880000000-0x0000000c7fffffff] unknown-12
#sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=16 pmem_count=1

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
sudo modprobe pmem pmem_start_gb=30 pmem_size_gb=32 pmem_count=1
