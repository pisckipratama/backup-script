#!/bin/sh
date=$(date -d "today" +'%Y-%m-%d')
yest=$(date -d "yesterday" +'%Y-%m-%d')

mkdir /home/ubuntu/Public/$date
cd /home/ubuntu/Public/$yest
zip -r /home/ubuntu/backup/backup-$yest.zip *
scp /home/ubuntu/backup/backup-$yest.zip ubuntu@192.168.221.6:/backup/
cd ~
