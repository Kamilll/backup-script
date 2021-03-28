#!/bin/bash

echo "Starting backup script as $(whoami)"
sudo -u USER_TO_NOTIFY_PLACEHOLDER notify-send 'Backup started' "Don't unmount your device"
rsync --recursive --size-only --delete --verbose SOURCE_DIR_PLACEHOLDER TARGET_DIR_PLACEHOLDER
sudo -u USER_TO_NOTIFY_PLACEHOLDER notify-send 'Backup finished'

