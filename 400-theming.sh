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

sudo pacman -S --noconfirm --needed conky conky-lua-archer conky-manager arcolinux-conky-collection-git


sudo pacman -S sardi-icons  --noconfirm --needed
sudo pacman -S surfn-mint-y-icons-git --noconfirm --needed

 


echo "################################################################"
echo "################################################################"
echo "###################    T H E   E N D      ###############Mehdi##"
echo "################################################################"
echo "################################################################"




