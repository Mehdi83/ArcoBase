#! /bin/bash

#var=$(tput blink;"My name is bash and I rock da house"; tput tgr0)
 

 #medallion-gold.png
#zenity --info --text="Calculation complete"

dati=`date +%m-%d-%Y-%H-%M-%S`

cp -r ~/.config/ ~/BackUp/baki$dati/

sleep 1
deepin-terminal # --command echo "BACK UP IS READY"

#var="BACK UP IS READY"
#echo $var
sleep 1
notify-send  "BACK UP IS READY" # -i ~/.config/neofetch/arcolinux-green.png
 