#!/bin/bash
# Free memory output
free -h > ~/backups/freemem/free_mem.txt
# Disk Usage output
du -h > ~/backups/diskuse/disk_usage.txt
# Open list output
ps aux > ~/backups/openlist/open_list.txt
# Free Disk Output
df -h > ~/backups/freedisk/free_disk.txt


