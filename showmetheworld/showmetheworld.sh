#!/bin/sh

URL="http://rammb.cira.colostate.edu/ramsdis/online/images/latest/himawari-8/full_disk_ahi_true_color.jpg"
SAVE_PATH=~/Downloads/showmetheworld.jpg

curl $URL -o $SAVE_PATH
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db $(printf "update data set value = '%s'" "$SAVE_PATH")
killall Dock
