#!/bin/bash

qemu-img create img 16g

mkfs.ext4 img

mkdir mountdir

sudo mount -o loop img mountdir

sudo debootstrap --arch=amd64 --include="sudo vim bash-completion net-tools ethtool openssh-server ifupdown network-manager iputils-ping rsyslog udev systemd" bionic mountdir "http://archive.ubuntu.com/ubuntu"

sudo umount mountdir

#sudo mount -t proc /proc mountdir/proc
#sudo mount -t sysfs /sys mountdir/sys
#sudo mount -o bind /dev mountdir/dev
#sudo mount -o bind /dev/pts mountdir/dev/pts


#################chroot
sudo mount -o loop img mountdir
sudo chroot mountdir
#passwd

#sudo update

#ifconfig -a

#ping -c2 google.com
#exit
#################out

#sudo umount mountdir/proc
#sudo umount mountdir/sys
#sudo umount mountdir/dev/pts
#sudo umount mountdir/dev



