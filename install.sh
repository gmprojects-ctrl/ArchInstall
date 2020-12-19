#!/bin/sh
#Arch Install script V.1 by the G-man
#Note make sure base-devel and git are installedi
#Variables
PC_NAME=pc
#Preliminaries
ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime
hwclock --systohc
cp /etc/locale.gen /etc/locale.gen2
sed -i 's/#en_GB.UTF-8\ UTF-8/en_GB.UTF-8\ UTF-8/' /etc/locale.gen
locale-gen
printf "LANG=en_GB.UTF-8" > /etc/locale.conf
printf "KEYMAP=gb" > /etc/vconsole.conf
printf "$PC_NAME" > /etc/hostname
printf "127.0.0.1  localhost\n::1       localhost\n127.0.1.1  $PC_NAME.localdomain $PC_NAME" >> /etc/hosts
#Root Password Change after first install
echo -e "root\nroot" | passwd root
cp /etc/sudoers /etc/sudoersbackup
sed -i 's/#\ %wheel\ ALL=(ALL)\ ALL/%wheel\ ALL=(ALL)\ ALL/' /etc/sudoers
useradd -m -G wheel -s /bin/bash user
echo -e "cake\ncake" | passwd user
#Adding the programs
pacman -Sy --noconfirm --needed grub efibootmgr vim ufw clamav networkmanager xorg-server python pulseaudio dkms linux-headers 
pacman -Sy --noconfirm --needed wget rsync htop cmatrix pulsemixer 
#Configuring security and network
systemctl enable NetworkManager.service
freshclam
systemctl enable clamav-freshclam.service
systemctl enable clamav-daemon.service
systemctl enable ufw.service
#Configuring Home folder
mkdir -p /home/user/Packages/Active
mkdir -p /home/user/Packages/Archive
mkdir -p /home/user/Scripts
#Setting up Bash
cp ./.bashrc /home/user/.bashrc
cp ./.bash_profile /home/user/.bash_profile
cp ./.vimrc /home/user/.vimrc
#Setting up other programs
(cd /home/user/Packages/Archive && git clone https://aur.archlinux.org/st.git )
#Setting up Vim
mkdir -p /home/user/.vim
cp -r ./UltiSnips /home/user/.vim/UltiSnips
echo "Finished"

