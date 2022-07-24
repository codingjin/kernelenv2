# kernelenv2

## set passwd for root in vm
passwd

exit

sudo umount mountdir

## set up the network inside vm
ifconfig -a

(get the ethenet interface, like enps03)

echo "iface enps03 inet dhcp" >> /etc/network/interfaces

ifup enps03

(add the command "ifup" to ~/.bashrc )


vi /etc/ssh/sshd_config

(#UNCOMMENT "PermitRootLogin" and yes) (# Uncomment "PermitEmptyPasswords" and yes)

/etc/init.d/S50sshd restart

## QEMU-monitor: telnet connecting to the vm 
(host) telnet 127.0.0.1 5555


