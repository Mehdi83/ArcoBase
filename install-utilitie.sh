#!/bin/bash
set -e

# -- nonconfirm = ByPass any and all ""Are you sure ?"
# --needed =  Do not reinstall /if is up-to-date  

sudo pacman -S meld --noconfirm --needed
sudo pacman -S sublime-text-4 --noconfirm --needed 


echo "################################################################"
echo "###################    Installation Done  ###############Mehdi##"
echo "################################################################"
