#!/bin/bash

# Prints amount of free memory on system 

free -h > ~/backups/freemem/free_mem.txt

# Prints disk usage

du -h > ~/backups/diskuse/disk_usage.txt

# Prints all open files

lsof > ~/backups/openlist/open_list.txt

# Prints file system disk space statistics

df -h > ~/backups/freedisk/free_disk.txt
