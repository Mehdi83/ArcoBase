#!/bin/bash

set -e


# -- nonconfirm = ByPass any and all ""Are you sure ?"
# --needed =  Do not reinstall /if is up-to-date 


#mirror
# run mirror in terminal first
#update 
# then run update in terminal 

sudo pacman -S archlinux-keyring

sudo pacman -Syyu

sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed
sudo pacman -S gnome --noconfirm --needed

sudo pacman -S deepin-desktop --noconfirm --needed

sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

sudo pacman -S intel-uncode --noconfirm

echo "################################################################"
echo "###################    T H E   E N D      ###############Mehdi##"
echo "################################################################"
