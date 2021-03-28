#!/bin/bash

#Kingston SD card
echo "Starting backup script as $(whoami)"
sudo -u kamil notify-send 'Backup started' "Don't unmount your device"
rsync --archive --verbose --delete /media/data/backup/sd1/ /run/media/kamil/6CD1-FCA8
sudo -u kamil notify-send 'Backup finished'

