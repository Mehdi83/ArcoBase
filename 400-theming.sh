#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "pacman inistallations"

sudo pacman -S base-devel	 --noconfirm  --needed
sudo pacman -S git	 --noconfirm  --needed
 
sudo pacman -S variety  --noconfirm  --needed  #wallpaper manager

sudo pacman -S arc-gtk-theme --noconfirm  --needed 

sudo pacman -S conky #conky-lua-archer conky-manager

echo "AUR installations"

 


echo "################################################################"
echo "################################################################"
echo "###################    T H E   E N D      ###############Mehdi##"
echo "################################################################"
echo "################################################################"




