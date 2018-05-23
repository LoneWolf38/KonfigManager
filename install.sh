#!/bin/sh
# Installation of suitable packages



#First install yaourt

sudo pacman -S yaourt

#Change to root for the change

sudo su -

echo "[archlinuxfr] 
Siglevel = Never 
Server = http://repo.archlinux.fr/\$arch " >> /etc/pacman.conf

