#!/bin/sh

sudo qemu-system-x86_64 -kernel bzImage -nographic -drive format=raw,file=img -append "root=/dev/sda rw console=ttyS0 nokaslr" -m 8G -enable-kvm -cpu host -smp 16 -device virtio-balloon -monitor telnet::3333,server,nowait 
