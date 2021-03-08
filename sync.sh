#!/bin/bash
clear
source configs/build*.sh

mkdir /drone/src/work/
cd /drone/src/work/
repo init -u git://github.com/lineageos/android.git -b lineage-17.1 --depth=1 --groups=all,-notdefault,-device,-darwin,-x86,-mips

repo sync -c -j96 --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync

