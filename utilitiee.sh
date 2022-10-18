#!/bin/bash
set -e

# -- nonconfirm = ByPass any and all ""Are you sure ?"
# --needed =  Do not reinstall /if is up-to-date  

sudo pacman -S gnome-tweak-tool --noconfirm --needed
#sudo pacman -S archlinux-tweak-tool-dev-git --noconfirm --needed

sudo pacman -S meld --noconfirm --needed
sudo pacman -S sublime-text-4 --noconfirm --needed 

sudo pacman -S pamac pamac-gtk --noconfirm --needed 



echo "################################################################"
echo "###################    Installation Done  ###############Mehdi##"
echo "################################################################"
