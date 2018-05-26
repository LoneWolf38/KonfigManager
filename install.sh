#!/bin/sh
# Installation of suitable packages

pkgInstall()
{
  #First install yaourt
  sudo pacman -S yaourt
  #Change to root for the change
  sudo su -
  echo "[archlinuxfr] 
    Siglevel = Never 
    Server = http://repo.archlinux.fr/\$arch " >> /etc/pacman.conf
    echo "Updating the System"
    pacman -Syu
  echo " Installing Packages from official Repo... "
  pacman -S - < paclist
  clear
  echo " Installing Packages from AUR..."
  cat aurlist | while read line; do yaourt -S ${line}; done
  echo " Installation done..."
  clear
}

pkgInstall

bash ./bin/km
