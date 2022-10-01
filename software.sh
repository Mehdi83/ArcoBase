#!/bin/bash
set -e

# -- nonconfirm = ByPass any and all ""Are you sure ?"
# --needed =  Do not reinstall /if is up-to-date  



sudo pacman -S --noconfirm --needed flameshot
sudo pacman -S --noconfirm --needed discord
sudo pacman -S --noconfirm --needed krita
sudo pacman -S --noconfirm --needed kdenlive
sudo pacman -S --noconfirm --needed obs-studio


echo "################################################################"
echo "###################    Installation Done  ###############Mehdi##"
echo "################################################################"
