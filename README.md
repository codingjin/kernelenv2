# kernelenv2

## set passwd for root in vm
passwd

exit

sudo umount -o loop img mountdir

## set up the network inside vm
ifconfig -a

(get the ethenet interface, like enps03)

echo "iface enps03 inet dhcp" >> /etc/network/interfaces

ifup enps03

vi /etc/ssh/sshd_config

(#UNCOMMENT "PermitRootLogin" and yes) (# Uncomment "PermitEmptyPasswords" and yes)

/etc/init.d/S50sshd restart

## ssh connecting to the vm in host
ssh -p 10022 root@localhost 

(Lowercase 'p' means the port number for ssh)

## scp transfers files from host to vm
scp -P 10022 file root@localhost:TOPATH

(Upppercase 'P' also means the port number, but for scp)

