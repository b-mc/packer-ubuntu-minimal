#!/bin/bash -eu

USER_ACC=${USER_ACC}

echo "%%%%% Updating guest additions %%%%%"
apt-get update
apt-get install --no-install-recommends build-essential linux-headers-generic dkms -y

mkdir /mnt/iso
mount -o loop /home/${USER_ACC}/VBoxGuestAdditions.iso /mnt/iso
yes | sh /mnt/iso/VBoxLinuxAdditions.run
umount /mnt/iso
rm /home/${USER_ACC}/VBoxGuestAdditions.iso

echo "%%%%% Rebooting %%%%%"
systemctl stop sshd.service
nohup shutdown -r now < /dev/null > /dev/null 2>&1 &
sleep 120