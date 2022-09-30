#!/bin/bash

set -e


# -- nonconfirm = ByPass any and all ""Are you sure ?"
# --needed =  Do not reinstall /if is up-to-date 



sudo pacman -Syyu

sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed
sudo pacman -S gnome --noconfirm --needed

sudo pacman -S budgie-desktop --noconfirm --needed

sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target

echo "Remove anything you do not like from the installed applications"

#sudo pacman -R gnome-backgrounds --noconfirm

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
