# Installing the virtualbox guest additions
VBOX_VERSION=$(cat /home/veewee/.vbox_version)
yum -y install make gcc kernel-devel-`uname -r` perl
cd /tmp
mount -o loop /home/veewee/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /home/veewee/VBoxGuestAdditions_*.iso

