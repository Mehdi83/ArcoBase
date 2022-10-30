#! /bin/bash  


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
kitty 


sleep 1
notify-send  "BACK UP IS READY"  -i ~/.config/neofetch/arcolinux-green.png
 




# echo "####### BAKI10 ########" 

aBaki=(~/BackUp/baki*)
dBaki=$(("${#aBaki[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $dBaki > 7 ))
then 
 dli="${aBaki[@]:0:$dBaki}";
 rm -rf $dli
fi

#echo "####### i3Block ########" 

ai3Block=(~/BackUp/i3Block*)
di3Block=$(("${#ai3Block[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3Block > 7 ))
then 
 dli="${ai3Block[@]:0:$di3Block}";
 rm $dli
fi

#echo "####### i3Conf ########" 

ai3Conf=(~/BackUp/i3Conf*)
di3Conf=$(("${#ai3Conf[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3Conf > 7 ))
then 
 dli="${ai3Conf[@]:0:$di3Conf}";
 rm $dli
fi

#echo "####### i3ConPoly ########" 

ai3ConfPoly=(~/BackUp/i3ConfPoly*)
di3ConfPoly=$(("${#ai3ConfPoly[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3ConfPoly > 7 ))
then 
 dli="${ai3ConfPoly[@]:0:$di3ConfPoly}";
 rm $dli
fi

#echo "####### i3Picom ########" 

ai3Picom=(~/BackUp/i3Picom*)
di3Picom=$(("${#ai3Picom[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3Picom > 7 ))
then 
 dli="${ai3Picom[@]:0:$di3Picom}";
 rm $dli
fi

#echo "####### i3Status ########" 

ai3Stat=(~/BackUp/i3Status*)
di3Stat=$(("${#ai3Stat[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3Stat > 7 ))
then 
 dli="${ai3Stat[@]:0:$di3Stat}";
 rm $dli
fi

#echo "####### PolyConf########" 

aPolyC=(~/BackUp/PolyConf*)
dPolyC=$(("${#aPolyC[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $dPolyC > 7 ))
then 
 dli="${aPolyC[@]:0:$dPolyC}";
 rm $dli
fi

#echo "####### PolyLuncher########"

aPolyL=(~/BackUp/PolyLauncher*)
dPolyL=$(("${#aPolyL[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $dPolyL > 7 ))
then 
 dli="${aPolyL[@]:0:$dPolyL}";
 rm $dli
fi