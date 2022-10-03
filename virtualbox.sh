#!/bin/bash

set -e 


# -- nonconfirm = ByPass any and all ""Are you sure ?"
# --needed =  Do not reinstall /if is up-to-date  


sudo pacman -S virtualbox-host-modules-arch --noconfirm --needed
sudo pacman -S virtualbox --noconfirm --needed
 

sudo grub-mkconfig -o /boot/grub/grub.cfg








echo "################################################################"
echo "###################    Installation Done  ###############Mehdi##"
echo "################################################################"
