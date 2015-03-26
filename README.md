# pmem-bld

build-pmem.sh does git clone git://git.open-osd.org/pmem.git, copies the specified /boot/config-*, adds the pmem specific Kconfig defines, builds the new kernel, and installs it.

build-prd.sh does the same with git clone https://github.com/01org/prd.

These scripts work with CentOS 6.

/etc/grub.conf will need kernel parameter(s) memmap=lengthG\\\$startG for the NVDIMM locations as reported by dmesg's BIOS-e820 unknown-12 memory map.  Load pmem/prd with the same equivalent parameter(s).
