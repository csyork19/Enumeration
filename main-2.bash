#!/bin/bash
echo "Hostname of the system:"
hostname

echo "Running sudo -l":
sudo -l

echo "Running id:"
id

echo "Operating system:"
cat /etc/issue

echo "Printing writable directories for the current user:"
find / -type d -writable -print

echo "Printing writable files for the current user:"
find / -type f -writable -print


echo "Printing world executble directories for the current user:"
find / -perm -o x -type d 2>/dev/null

echo "Printing development toos and suported languages:"
find / -name perl*
find / -name python*
find / -name gcc*

echo "Print files with SUID bit set:"
find / -perm -u=s -type f 2>/dev/null

echo "Hello World";
