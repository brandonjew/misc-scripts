HEIGHT=$(( $(cal -n $1 | wc -l) - 1 ))
WIDTH=$(cal -n $1 | head -1 | wc -c) 
resize -s $HEIGHT $WIDTH > /dev/null 
printf '\e[3;-0;+0t'
cal -n $1 & #| head -$HEIGHT &
CAL_ID=$!
xdotool key Shift+Page_Up
sleep 3 && kill $CAL_ID && exit
