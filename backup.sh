#!/bin/sh
 
NOW=$(date +"%m-%d-%Y")
 
# Path to recovery directory (permissions should be 700 -- read-only root or admin)
recover="/Volumes/ODBackup"
 
# Backup Open Directory
day=`date ''+%u''`
 
od_backup="$recover/od_backup - "$NOW""
ts=`date ''+%F''`
echo "dirserv:backupArchiveParams:archivePassword = 908239032" > $od_backup
echo "dirserv:backupArchiveParams:archivePath = $recover/od_$ts" >> $od_backup
echo "dirserv:command = backupArchive" >> $od_backup
 
serveradmin command < $od_backup