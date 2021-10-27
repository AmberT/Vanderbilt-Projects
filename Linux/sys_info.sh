#!/bin/bash
#Create directory for output
mkdir -p ~/research

#Print title of script to screen 
echo "This is sys_info.sh" >> ~/research/sys_info.txt
date >> ~/research/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> ~/research/sys_info.txt
echo -e "IP info: $(ip addr | head -9 | tail -1)" >> ~/research/sys_info.txt
echo -e "Host name: $(hostname)" >> ~/research/sys_info.txt

sudo find /home -perm 777 type f >> ~/research/sys_info.txt
sudo ps aux --sort %mem | awk '{print $1, $2, $3, $4, $11}' | head >> ~/research/sys_info.txt


#For loops

etc_paths={ '~/etc/shadow' '~/etc/passwd' }

for users in ${etc_paths[@]};
do
	for perm in {$ls /home};
	do
		if {}

