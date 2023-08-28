#!/bin/bash

mkdir -p /opt/test/logs/linux

#echo "readmefile: " > /opt/test/logs/linux/logs.txt
cat /root/readme.txt >> /opt/test/logs/linux/logs.txt

echo "test" >> /opt/test/logs/linux/logs.txt

#echo "group file: " >> /opt/test/logs/linux/logs.txt
cat /etc/group | tail -n2 | head -n1 >> /opt/test/logs/linux/logs.txt

#echo "df first column: " >> /opt/test/logs/linux/logs.txt
df | awk '{print $1}' >> /opt/test/logs/linux/logs.txt

#echo "history second command: " >> /opt/test/logs/linux/logs.txt
history | head -n2 | tail -n1 >> /opt/test/logs/linux/logs.txt  
