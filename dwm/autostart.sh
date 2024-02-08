#!/usr/bin/env sh
cd ~/.local/share/dwm/

sh input/main.sh
sh bar/main.sh &
#slstatus &
fcitx5 &
picom -b
bash ~/.fehbg &
redshift -PO 5000 &
xset s off -dpms
xset r rate 223 27
