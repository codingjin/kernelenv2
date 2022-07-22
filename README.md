# kernelenv2

## set passwd for root in vm
passwd

exit

sudo umount -o loop img mountdir

## set up the network inside vm
ifconfig -a

(get the ethenet interface, like enps03)

ifup enps03

vi /etc/ssh/sshd_config

(#UNCOMMENT "PermitRootLogin" and yes) (# Uncomment "PermitEmptyPasswords" and yes)

/etc/init.d/S50sshd restart

## ssh connecting to the vm in host
ssh -p 10022 root@localhost 

(Lowercase 'p' means the port number)


## shared directory between host and vm

(hsot side)

dd if=/dev/zero of=shareimg bs=1024 count=102400

mkfs.ext4 shareimg


(add an option in the qemu start-command)  -hdb shareimg

(VM side: After login into vm)mount /dev/sdb/ /mnt

(Host side) mkdir sharedir; sudo mount -t ext4 -o loop shareimg ./sharedir

(Now vm and host should enjoy sharing)


