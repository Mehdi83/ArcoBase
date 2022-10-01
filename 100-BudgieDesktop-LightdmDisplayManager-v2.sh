#!/bin/bash

set -e


# -- nonconfirm = ByPass any and all ""Are you sure ?"
# --needed =  Do not reinstall /if is up-to-date 


#mirror
#update 
sudo pacman -S archlinux-keyring
sudo pacman -Syyu

sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed
sudo pacman -S gnome --noconfirm --needed

sudo pacman -S budgie-desktop --noconfirm --needed

sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

sudo pacman -S pamac pamac-gtk --noconfirm --needed

echo "################################################################"
echo "###################    T H E   E N D      ###############Mehdi##"
echo "################################################################"
