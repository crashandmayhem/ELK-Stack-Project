#!/bin/bash

output='~/Documents/research/sys_info2.txt'


files=(
'/etc/passwd'
'/etc/shadow'
)

# will be looking for permissions of each file in the list
for file in ${files[@]};
do 
  ls-l $file >> $output
done
