#!/bin/bash
#pkill -u $USER
wybor=`xmessage -buttons ==TAK==,==NIE== -geometry 200x150 -center "
====================
#                  #
#  Jestes pewien?  # 
#                  #
====================
" -print`

wybor=${wybor// /}

#echo $wybor

if [ "$wybor" = "==TAK==" ]; then
  pkill -u $USER
elif [ "$wybor" = "==NIE==" ]; then
  exit 0
fi
