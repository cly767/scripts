#!/usr/bin/env sh
xsetroot -name " `sh $DWM_SCRIPT_DIR/bar/dwm-alsa.sh` | `sh $DWM_SCRIPT_DIR/bar/dwm-battery.sh` | `date '+%Y/%m/%d %I:%M'` "
