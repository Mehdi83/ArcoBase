#! /bin/bash

al= ls | wc -l


echo "####### BAKI10 ########" 

aBaki=(~/BackUp/baki*)
dBaki=$(("${#aBaki[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $dBaki > 5 ))
then 
 dli="${aBaki[@]:0:$dBaki}";
 rm -rf $dli
fi




echo "####### i3Block ########" 

ai3Block=(~/BackUp/i3Block*)
di3Block=$(("${#ai3Block[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3Block > 5 ))
then 
 dli="${ai3Block[@]:0:$di3Block}";
 rm $dli
fi


echo "####### i3Conf ########" 

ai3Conf=(~/BackUp/i3Conf*)
di3Conf=$(("${#ai3Conf[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3Conf > 5 ))
then 
 dli="${ai3Conf[@]:0:$di3Conf}";
 rm $dli
fi


echo "####### i3ConPoly ########" 

ai3ConfPoly=(~/BackUp/i3ConfPoly*)
di3ConfPoly=$(("${#ai3ConfPoly[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3ConfPoly > 5 ))
then 
 dli="${ai3ConfPoly[@]:0:$di3ConfPoly}";
 rm $dli
fi


echo "####### i3Picom ########" 

ai3Picom=(~/BackUp/i3Picom*)
di3Picom=$(("${#ai3Picom[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3Picom > 5 ))
then 
 dli="${ai3Picom[@]:0:$di3Picom}";
 rm $dli
fi


echo "####### i3Status ########" 

ai3Stat=(~/BackUp/i3Status*)
di3Stat=$(("${#ai3Stat[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $di3Stat > 5 ))
then 
 dli="${ai3Stat[@]:0:$di3Stat}";
 rm $dli
fi


echo "####### PolyConf########" 

aPolyC=(~/BackUp/PolyConf*)
dPolyC=$(("${#aPolyC[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $dPolyC > 5 ))
then 
 dli="${aPolyC[@]:0:$dPolyC}";
 rm $dli
fi



echo "####### PolyLuncher########"

aPolyL=(~/BackUp/PolyLauncher*)
dPolyL=$(("${#aPolyL[@]}-5"))
#echo "arrPolyL is : $dPolyL"
if (( $dPolyL > 5 ))
then 
 dli="${aPolyL[@]:0:$dPolyL}";
 rm $dli
fi



















<<declarE
declare -a arrf
for i in file*
do
  arrf=(  "${arrf[@]}" "$i" )
done


declare -a arrn
for i in name*
do
  arrn=(  "${arrn[@]}" "$i" )
done

declare -a arrt
for i in test_*
do
  arrt=(  "${arrt[@]}" "$i" )
done
declarE

 
<<big
#####################
declare -A big
#echo "tyt arrn : ${arrn[@]}"
#echo "tyt arrf : ${arrf[@]}"
 
big["file"]=${arrf[@]}

big["name"]=${arrn[@]};

big["test_"]=${arrt[@]}


echo "${#big[1]}"

echo " BIG IS : ${big[@]}"


for i in "${big[@]}"
do
	echo "$i :  ${big[$i]}"
done

big


