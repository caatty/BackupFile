#!/bin/bash
# Author Morshed Hasan
# Description: its script for backup /etc and /var file system. 
# date 04/02/2022

#tar cvf /tmp/backup.tar /etc /var
cd /tmp
#gzip backup.tar

find backup.tar.gz -mtime -1 -type f -print &> /dev/null
if [ $? -eq 0 ]
        then
        echo Backup was created.
        echo
        echo archiving Backup
        scp /tmp/backup.tar.gz deeniyat@20.212.167.252:/home/deeniyat/
        else
        echo backup failed.
fi
