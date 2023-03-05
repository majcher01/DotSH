#!/bin/bash
#pkill -u $USER
choice=`xmessage -buttons ==YES==,==NO== -geometry 200x150 -center "
====================
#                  #
#  Are you sure ?  # 
#                  #
====================
" -print`

choice=${choice// /}


if [ "$choice" = "==YES==" ]; then
  pkill -u $USER
elif [ "$choice" = "==NO==" ]; then
  exit 0
fi
