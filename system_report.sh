#! /bin/bash

my_date=`date +%m-%d-%Y`
my_report_file="report_$my_date.log"

echo $my_report_file

if [[ ! $1 ]]; then
    echo "Missing argument"
    exit 1
fi

echo "#################################################" > $my_report_file
echo "################# SYSTEM REPORT #################" >> $my_report_file
echo "#################################################" >> $my_report_file   
echo "" >> $my_report_file
echo "" >> $my_report_file
echo "" >> $my_report_file

echo "################## HostName ##################" >> $my_report_file
echo "" >> $my_report_file
echo $(hostname) >> $my_report_file
echo "" >> $my_report_file

echo "################# IP Address #################" >> $my_report_file
echo "" >> $my_report_file
echo $(hostname -I) >> $my_report_file
echo "" >> $my_report_file

echo "############## Free memory usage #############" >> $my_report_file
echo "" >> $my_report_file
echo $(free) >> $my_report_file
echo "" >> $my_report_file

echo "############ Number of CPU cores #############" >> $my_report_file
echo "" >> $my_report_file
echo $(grep -P '^core id\t' /proc/cpuinfo | sort -u | wc -l) >> $my_report_file
echo "" >> $my_report_file

echo "############ Number Running Processes #############" >> $my_report_file
echo "" >> $my_report_file
echo $(ps | wc -l) >> $my_report_file
echo "" >> $my_report_file


if_user_exist="$(grep -ow $1 /etc/passwd | wc -l)"

if [[ if_user_exist -gt 0 ]]; then
    echo "$1 present!"
else
    echo "no user found"
fi


echo "###############################################" >> $my_report_file
echo "############### End Of Report #################" >> $my_report_file
echo "###############################################" >> $my_report_file