#!/bin/sh
#Arch Install script V.1 by the G-man
#Note make sure base-devel and git are installedi
#Variables
PC_NAME=pc
#Preliminaries
ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime
hwclock --systohc
cp /etc/locale.gen /etc/locale.gen2
sed -i 's/#en_GB.UTF-8\ UTF-8/en_GB.UTF-8\ UTF-8/' locale.gen
locale-gen
printf "LANG=en_GB.UTF-8" > /etc/locale.conf
printf "KEYMAP=gb" > /etc/vconsole.conf
printf "$PC_NAME" > /etc/hostname
printf "127.0.0.1  localhost\n::1  localhost\n127.0.1.1  $PC_NAME.localdomain $PC_NAME" >> /etc/hosts
#Root Password Change after first install
echo -e "root\nroot" | passwd root
cp /etc/sudoers /etc/sudoersbackup
sed -i 's/#\ %wheel\ ALL=(ALL)\ ALL/%wheel\ All=(All)\ All/' /etc/sudoers
useradd -m -G wheel -s /bin/bash user
echo -e "cake\ncake" | passwd user
#Adding the programs
pacman -Sy grub efibootmgr vim networkmanager xorg-server xorg-xinit xfce4 rxvt-unicode evince --noconfirm
systemctl enable NetworkManager.service 
systemctl start NetworkManager.service
if [ -d /homer/user ] && [ -a /etc/X11/xinit/xinitrc];  then
	cp /etc/X11/xinit/xinitrc /home/user/.xinitrc
else
	echo "Error finding home user or xinitrc"
fi
if [ -a /home/user/.xinitrc]; then
	printf "exec xfce4" >> /home/user/.xinitrc
else
	echo "Failed to find xinitrc"
fi


