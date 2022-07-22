#!/bin/bash

qemu-img create img 16g

mkfs.ext4 img

mkdir mountdir

sudo mount -o loop img mountdir

sudo debootstrap --arch=amd64 --include="sudo vim bash-completion net-tools ethtool openssh-server ifupdown network-manager iputils-ping rsyslog udev systemd" bionic mountdir "http://archive.ubuntu.com/ubuntu"

sudo umount mountdir



