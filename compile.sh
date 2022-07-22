#!/bin/bash

make menuconfig
#make x86_64_defconfig
#make kvm_guest.config

make -j$(nproc)
cp ./arch/x86_64/boot/bzImage .
cp ./arch/x86_64/boot/bzImage ../

