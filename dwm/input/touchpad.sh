#!/usr/bin/env sh

# Get id of touchpad and the id of the field corresponding to
# natural scrolling
id=`xinput list | grep "Touchpad" | cut -d'=' -f2 | cut -d'[' -f1`
natural_scrolling_id=`xinput list-props $id | \
                      grep "Natural Scrolling Enabled (" \
                      | cut -d'(' -f2 | cut -d')' -f1`

# Get the id of the field corresponding to
# tapping to click
tap_to_click_id=`xinput list-props $id | \
                      grep "Tapping Enabled (" \
                      | cut -d'(' -f2 | cut -d')' -f1`

tap_drag_lock_id=`xinput list-props $id | \
					  grep "Tapping Drag Lock Enabled (" \
					  | cut -d'(' -f2 | cut -d')' -f1`

# Set the properties
xinput --set-prop $id $natural_scrolling_id 1
xinput --set-prop $id $tap_to_click_id 1
xinput --set-prop $id $tap_drag_lock_id 0
