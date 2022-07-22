#!/bin/sh

sudo qemu-system-x86_64 -kernel bzImage -nographic -drive format=raw,file=img,if=virtio -append "root=/dev/vda rw console=ttyS0 nokaslr" -m 8G -enable-kvm -cpu host -smp 16 -net nic,model=virtio -net user,hostfwd=tcp::10022-:22 -device virtio-balloon -monitor telnet::3333,server,nowait -serial stdio
