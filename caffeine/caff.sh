#!/bin/bash

# Keeps xautolock from suspending if a window is fullscreen

while true
do
    activ_win_id=`xprop -root _NET_ACTIVE_WINDOW`
    if xprop -id ${activ_win_id:40:9} | grep -q _NET_WM_STATE_FULLSCREEN ; then
      xautolock -enable
		fi
    sleep 60
done
