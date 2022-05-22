#!/bin/bash

mkdir ~/research_2 > /dev/null

echo "Greetings" >> ~/research/sys_info.txt
echo -e "This is the uname for the machine: \n$(ip addr | head -9 | tail -1)" >> ~/research/sys_info.txt
echo -e "The Hostname is: \n$(hostname)" >> ~/research/sys_info.txt
echo " " >> ~/research/sys_info.txt
echo "Don't have a good day, have a GREAT DAY" >> ~/research/sys_info.txt
echo -e "Disk usage:\n" >> ~/research/sys_info.txt
df -H | head -4 | tail -1 >> ~/research/sys_info.txt

echo -e "\n777 files:" >> ~/research/sys_info.txt
find / -type f -perm 777 >> ~/research/sys_info.txt
echo -e "\nTop 10 Processes:" >> ~research/sys_info.txt
ps aux -m \ awk {'print $1, $2, $3, $4, $11'} | head -11 >> ~/research/sys_info.txt
