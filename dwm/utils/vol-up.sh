#!/bin/sh

amixer -qM set Master 5%+ umute
sh $DWM_SCRIPT_DIR/bar/status-refresh.sh
#xsetroot -name "$(slstatus -1)"
