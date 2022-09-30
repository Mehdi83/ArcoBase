#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "pacman inistallations"
 
sudo pacman -S variety  --noconfirm  --needed  #wallpaper manager

sudo pacman -S arc-gtk-theme --noconfirm  --needed 


echo "AUR installations"

packer -S sardi-icons sardi    
packer -S sardi-mono-papirus-colora-variations-icons-git

packer -S xcursor-breeze


echo "################################################################"
echo "################################################################"
echo "###################    T H E   E N D      ###############Mehdi##"
echo "################################################################"
echo "################################################################"




