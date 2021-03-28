#!/bin/bash

#Kingston SD card
MOUNT_POINT='run-media-kamil-6CD1\x2dFCA8.mount'
SOURCE_DIR='/media/data/backup/sd1/'
TARGET_DIR='/run/media/kamil/6CD1-FCA8'
USER_TO_NOTIFY='kamil'

ESCAPED_MOUNT_POINT=${MOUNT_POINT/\\/\\\\}

sudo sed -e "s~$ESCAPED_MOUNT_POINT~MOUNT_POINT_PLACEHOLDER~" \
         copy-sd1.service > /etc/systemd/system/copy-sd1.service

sudo sed -e "s~SOURCE_DIR_PLACEHOLDER~$SOURCE_DIR~" \
         -e "s~TARGET_DIR_PLACEHOLDER~$TARGET_DIR~" \
         -e "s~USER_TO_NOTIFY_PLACEHOLDER~$USER_TO_NOTIFY~" \
         backup-sd.sh > /usr/local/bin/backup-sd.sh

