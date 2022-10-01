#!/bin/bash
set -e

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "pacman inistallations"
 
sudo pacman -S cups  --noconfirm  --needed   
sudo pacman -S cups-pdf  --noconfirm  --needed   #save to pdf

sudo pacman -S foomatic-db foomatic-db-engine	--noconfirm  --needed # The linux Foundation's OpenPrinting workgroup's
sudo pacman -S foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds	--noconfirm  --needed
sudo pacman -S foomatic-db-gutenprint-ppds	--noconfirm  --needed


sudo pacman -S system-config-printer	--noconfirm  --needed

echo "###Systemctl installations###"

sudo systemctl enable cups.service   cups.socket
 


echo "################################################################"
echo "################################################################"
echo "###################    T H E   E N D      ###############Mehdi##"
echo "################################################################"
echo "################################################################"




