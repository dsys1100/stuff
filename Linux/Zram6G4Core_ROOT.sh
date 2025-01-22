#!/bin/sh

# Thanks: https://habr.com/ru/articles/172137/

modprobe zram num_devices=4
echo $((1536*1024*1024)) > /sys/block/zram0/disksize
echo $((1536*1024*1024)) > /sys/block/zram1/disksize
echo $((1536*1024*1024)) > /sys/block/zram2/disksize
echo $((1536*1024*1024)) > /sys/block/zram3/disksize
mkswap /dev/zram0
mkswap /dev/zram1
mkswap /dev/zram2
mkswap /dev/zram3
swapon /dev/zram0 -p 10
swapon /dev/zram1 -p 10
swapon /dev/zram2 -p 10
swapon /dev/zram3 -p 10
echo " "
echo " "
echo "All done!"