#! /bin/bash

uptime
id
whoami
pwd
uname -a
cp /var/log/lastlog ~



tail -n 10 /etc/group | head -n 2

ls /etc | grep [0-9]*[0-9]

find ~ -maxdepth 1 -type f -mtime +7 -ls

grep eror sample.txt

sed -i 's/eror/error/' sample.txt 

sed -i 's/ //g' sample.txt
sed -r 's/\s+//g' sample.txt
