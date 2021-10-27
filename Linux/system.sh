#!/bin/bash

# Prints the amount of free memory and saves the output to a text file
free -h > ~/backups/freemem/free_mem.txt

# Prints the disk usage and saves the output to a text file
du -h > ~/backups/diskuse/disk_usage.txt

# Lists all open files and saves the output to a text file
lsof -h > ~/backups/openlist/open_list.txt

# Prints file disk space statistics and saves the output to a text file
df -h > ~/backups/freedisk/free_disk.txt

