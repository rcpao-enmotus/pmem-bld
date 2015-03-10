#!/bin/bash

# prd-modprobe.sh

# 4 * 8GB RDIMMs + 2 * 8GB NVDIMM
# BIOS-e820: [mem 0x0000000880000000-0x0000000c7fffffff] unknown-12
sudo modprobe pmem pmem_start_gb=34 pmem_size_gb=16 pmem_count=1
