#!/bin/bash

qemu-img create img 16g

mkfs.ext4 img

mkdir mountdir

sudo debootstrap --arch=amd64 --include="sudo vim bash-completion net-tools ethtool ifupdown network-manager iputils-ping rsyslog udev systemd" bionic mountdir "http://archive.ubuntu.com/ubuntu https://docstore.mik.ua/manuals/ubuntu/8.04/installation-guide/hppa/linux-upgrade.html"





