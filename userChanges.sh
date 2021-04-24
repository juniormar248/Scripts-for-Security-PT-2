#!/bin/bash
#Samuel Martinez


file="/home/$USER/userList" #Sets file variable equal to path of the file I want to create

if [ ! -f $file ] # begind if statement and check if my file exists using the file variable
then
        touch $file 2>/dev/null # creates new file and cancels error message when file already exists
fi # ends if statement

date=$(date +%d-%m-%Y:%T) # Saves output of date command to variable called date
echo " User's from "$date >> $file #Wites text to specific file
awk -F: '{print $1}' /etc/passwd >> $file # Writes output of awk command to a specfic file
