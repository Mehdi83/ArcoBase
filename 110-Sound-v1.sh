#!/bin/bash

set -e



# -- nonconfirm = ByPass any and all ""Are you sure ?"
# --needed =  Do not reinstall /if is up-to-date  

sudo pacman -S pulseaudio pulseaudio-alsa --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-firmware alsa-lib --noconfirm --needed

 sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-ugly gstreamer --noconfirm --needed


yay spotify-1 --noconfirm --needed





echo "################################################################"
echo "###################    Installation Done  ###############Mehdi##"
echo "################################################################"