#!/bin/sh

amixer -qM set Master toggle
sh $DWM_SCRIPT_DIR/bar/status-refresh.sh
#xsetroot -name "$(slstatus -1)"
