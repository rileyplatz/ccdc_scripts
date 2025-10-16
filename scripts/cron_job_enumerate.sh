#!/bin/bash

# Cron jobs
echo -e "\nCron Jobs:" >> fh.txt
directories=("/etc/cron.d" "/etc/cron.daily" "/etc/cron.hourly" "/etc/cron.monthly" "/etc/cron.weekly" "/var/spool/cron" "/etc/anacrontab" "/var/spool/anacron")
for directory in "${directories[@]}"; do
    echo "Cron Jobs in $directory:" >> fh.txt
    for file in "$directory"/*; do
        if [ -f "$file" ]; then
            echo "File: $file" >> fh.txt
            cat "$file" >> fh.txt
        fi
    done
done
echo "[Completed enumerate] Results in fh.txt"
