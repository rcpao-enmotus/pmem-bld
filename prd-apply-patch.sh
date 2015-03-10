#!/bin/bash

cd prd
git apply ../prd-20150204a.patch

patch -p1 -i ../prd-20150210a-blk_queue_max_segment_size.patch
