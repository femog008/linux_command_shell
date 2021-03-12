#! /bin/bash

:'
• Create a file, which has read permission for user and group only
• Create a file, which has write permission for user only.
• Create a directory where everyone can enter but only user can write.
• Create an executable file by user only
'

echo "Create a file, which has read permission for user and group only"
echo "test file 1" > test_file_1.txt
ls -al test_file_1.txt
chmod 110 test_file_1.txt
ls -al test_file_1.txt
echo "###### End #######"


echo "Create a file, which has write permission for user only."
echo "test file 2" > test_file_2.txt
ls -al test_file_2.txt
chmod 200 test_file_2.txt
ls -al test_file_2.txt
echo "###### End #######"

echo "Create a directory where everyone can enter but only user can write."
echo "Creating Directory AllReadUserWrite"
mkdir AllReadUserWrite
chmod 544 AllReadUserWrite
ls -al | grep AllReadUserWrite
echo "###### End #######"

echo "Create an executable file by user only."
echo "test file 3" > test_file_3.txt
ls -al test_file_3.txt
chmod 100 test_file_3.txt
ls -al test_file_3.txt
echo "###### End #######"

