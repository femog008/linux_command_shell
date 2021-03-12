#! /bin/bash

# Dump the existing cron jobs to a file
crontab -l > jobs.txt 

# Add a new job to the file
echo "0 * * * * find /tmp/* -mtime +10 -type f -delete" >> jobs.txt 


# Use cron to configure crontab with the jobs in the file
cron jobs.txt