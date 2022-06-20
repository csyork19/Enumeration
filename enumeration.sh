#!/bin/bash

printf "\n----Hostname----\n\n"
hostname

printf "\n----Operating system----\n\n"
cat /etc/issue

printf "\n----Running id----\n\n"
id

printf "----Running sudo -l ----":
sudo -l

printf "\n----Kernal info----\n\n"
uname -a


printf "\n---- Printing writable directories for the current user ----\n\n"
find / -type d -writable -print

printf "\n---- Printing writable files for the current user ----\n\n"
find / -type f -writable -print


printf "\n---- Printing world executble directories for the current user ----\n\n"
find / -perm -o x -type d 2>/dev/null

#echo "---- Printing development toos and suported languages ----"
#find / -name perl*
#find / -name python*
#find / -name gcc*

printf "\n*---- Print files with SUID bit set ----\n\n"
find / -perm -u=s -type f 2>/dev/null

printf "\n---- Cron Jobs ----\n\n"
cat /etc/crontab


