#!/bin/bash

make menuconfig

# in order to support vm Internet access, at least now, I need to config the E1000
# Location: Device Drivers -> Network device support ->Ethernet driver support -> Intel devices
# Set all the options under Intel devices into “y/*”, 'M' does not work!



make -j$(nproc)
cp ./arch/x86_64/boot/bzImage .
cp ./arch/x86_64/boot/bzImage ../

