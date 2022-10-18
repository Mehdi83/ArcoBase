#!/bin/bash   

rand=$RANDOM
secret=${rand:0:2}



function game {
  read -p  "Guess one number : " guess
echo    
    function check {
    if (($guess < $secret))
    then echo "GO UP!! "
      else echo "GO DOWN!! "
    fi
    }
    check
    
    echo
    var=$((guess-secret))

    while [[ $guess != $secret ]];  
    do
      if (($var <0));then let var*=-1 ;fi
#      echo $var
   if (( $var > 80 )); then echo "so far";
    elif (( $var > 50 )); then echo " over 50";
    elif (( $var > 20 )); then echo "over 20";
    elif (( $var > 10 )); then echo "over 10";
    elif (( $var > 5 )); then echo "change less then 10";
    else echo "One step";
   fi 
  echo
      tput setaf 2;tput blink; echo "Try again :" ;tput sgr0;
      
     # echo -e "\033[5;32m Try again! :\033[0m" 
      read guess
      check
      var=$((guess-secret))
    done
    echo "good job you guess $secret is it!"
   
}

game


#notify-send  "My name is bash and I rock da house"  
#zenity --info --text="Calculation complete"

