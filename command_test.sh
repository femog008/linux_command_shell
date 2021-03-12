#! /bin/bash

:' • Listing files /var/lib
   • Changing directory to your home directory
   • Checking content of files ( /var/log/message )
   • Create a file ( /home/yourname
   • Renaming files ( rename yourname to myname )
   • Deleting files ( delete the created file )
   • Count number of files in /etc
   • Remember: Everything is file ( Repeat with directory )
'

echo "Listing files /var/lib"
ls -l /var/lib/
echo "###### End #######"

echo "Changing directory to your home directory"
cd ~
pwd
echo "###### End #######"

echo "Checking content of files ( /var/log/message )"
cat /var/log/vboxadd-setup.log.1
echo "###### End #######"

echo  "Create a file ( /home/yourname)"
touch ~/yourname
ls ~
echo "###### End #######"

echo "Renaming files ( rename yourname to myname )"
mv ~/yourname ~/myname
ls ~
echo "###### End #######"

echo "Deleting files ( delete the created file )"
rm ~/myname
echo "###### End #######"

echo "Count number of files in /etc"
ls -l /etc | wc -l
echo "###### End #######"

echo "Remember: Everything is file ( Repeat with directory )"
ls -l /etc | grep ^d | wc -l
echo "###### End #######"
