#! /bin/bash

:'
• Customize your login welcome message with greetings 
    • Your name
    • Today’s date
    • Hostname

    # Instructions
    * Create a file 05-info
    * Paste the code below into the newly created file.
    * Move the file to the directory
      - cd /etc/update-motd.d/
    * Add execute permission to the file
    * Logout and login to check the changes.

'

#! /usr/bin/env bash

# Basic info
HOSTNAME=`uname -n`
MYACCOUNT=`whoami`
TODAY=`date`

echo "
===============================================
   Welcome: $MYACCOUNT
   You are curently logged into: $HOSTNAME
   It is a Bright day for DevOps and Today is:
    _______________________________________
    $TODAY
    _______________________________________
===============================================

"