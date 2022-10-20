#! /bin/bash

#var=$(tput blink;"My name is bash and I rock da house"; tput tgr0)
 

 #medallion-gold.png
#zenity --info --text="Calculation complete"

dati=`date +%m-%d-%Y-%H-%M-%S`

cp -r ~/.config/ ~/BackUp/baki$dati/

na1=~/.config/i3/config
na2=~/.config/i3/config-polybar
na3=~/.config/i3/i3blocks.conf
na4=~/.config/i3/i3status.conf
na5=~/.config/i3/picom.conf

na6=~/.config/polybar/config
na7=~/.config/polybar/launch.sh


if [ -f "$na1" -o "$na2" -o "$na3" -o "$na4" ];
then 
    echo "Done"
    cp $na1 ~/BackUp/i3Conf_$dati.txt
    cp $na2 ~/BackUp/i3ConfPoly_$dati.txt
    cp $na3 ~/BackUp/i3Block_$dati.txt
    cp $na4 ~/BackUp/i3Status_$dati.txt
    cp $na5 ~/BackUp/i3Picom_$dati.txt

    cp $na6 ~/BackUp/PolyConf_$dati.txt
    cp $na7 ~/BackUp/PolyLauncher_$dati.txt
    
else 
    echo "NOt here"
fi



sleep 1
deepin-terminal # --command echo "BACK UP IS READY"

#var="BACK UP IS READY"
#echo $var
sleep 1
notify-send  "BACK UP IS READY"  -i ~/.config/neofetch/arcolinux-green.png
 