#!/bin/sh
# Installation of suitable packages

 echo "First install yaourt..."
  sudo pacman -S yaourt
 echo "Chrooting..."
  sudo su -
  echo "[archlinuxfr] 
    Siglevel = Never 
    Server = http://repo.archlinux.fr/\$arch " >> /etc/pacman.conf
    echo "Updating the System first to the recent packages..."
    pacman -Syu
  echo " Installing Necessary Packages from official Repo... "
   pacman -S - < paclist

  echo " Installing Packages from AUR..."
  cat aurlist | while read line; do yaourt -S ${line}; done
  echo " Installation done..."
  clear
bash ./bin/km
