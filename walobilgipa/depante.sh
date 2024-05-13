#!/usr/bin/env bash


CWD=`pwd`
BACKUP_FILENAME=server-dist.7z
cd /container/dist
echo "Creating /container/${BACKUP_FILENAME}"
7z a -r -mx=0 -mmt=off ../$BACKUP_FILENAME .
echo "Copyng /container/${BACKUP_FILENAME} to /content/gdrive/"
cp ../${BACKUP_FILENAME} /content/gdrive/
echo "Backup saved to /content/gdrive/${BACKUP_FILENAME}"
cd $CWD

#** end of /container/dist/sbin/dist-container-deploy.sh **
