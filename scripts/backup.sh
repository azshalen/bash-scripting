#!/bin/bash

#Simple script to use with AT or CRONJOB to backup a directory.
#Backup /home/azsha/Downloads/BackupThis/ to /home/azsha/Backups/BackupThis_$DATE

wtb="$HOME/Downloads/BackupThis/"
fileName="$HOME/Backups/BackupThis-$(date +%d-%m-%y).tar.gz"

echo $fileName
echo $wtb

tar -cvzf $fileName $wtb

echo "Completed"

:<<'CRON'
Example for the cron entry:
30	18	*	*	*	/home/azsha/bash-scripting/scripts/backup.sh
CRON
