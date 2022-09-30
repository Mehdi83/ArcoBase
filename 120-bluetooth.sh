#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "###############Bluetooth installation###################"
 
 ######## Install JUST what you need #####
sudo pacman -S pulseaudio-bluetooth	--noconfirm --needed

sudo pacman -S bluez bluez-libs  bluez-utils  bluez-plugins  bluez-tools	--noconfirm --needed

sudo pacman -S gnome-bluetooth	--noconfirm --needed

 echo "############### Bluetooth enable/start ###################"

sudo systemctl enable bluetooth.service # --noconfirm --needed  are not using on systemctl
sudo systemctl start bluetooth.service
#sudo systemctl daemon-reload

echo "" 
echo "################################################################"
echo "################################################################"
echo "###################    T H E   E N D      ###############Mehdi##"
echo "################################################################"
echo "################################################################"
echo "" 


