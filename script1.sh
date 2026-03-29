#!/bin/bash
#----------------------------------------
# script 1: System Identity Report
# Author : Yuvraj Singh
# Goal: To display basic system information
#----------------------------------------

#for fetching linux distribution name from os-release file
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')   
KERNEL=$(uname -r) #Kernel version
USER_NAME=$(whoami) # getting currently logged in user
HOME_DIR=$HOME #home directory of the user from environment var
UPTIME=$(uptime -p) #System uptime in a readable format
CURRENT_DATE=$(date) # for displaying current date and time

#printing a simple header for readability and niceness
echo "----------------------------------------"
echo " Welcome to your Linux System Overview"
echo "----------------------------------------"

echo "Distribution : $DISTRO"				#System related information
echo "Kernel : $KERNEL"
echo 

echo "User		: $USER_NAME"			#User related information
echo "Home Dir	: $HOME_DIR"
echo

echo "Uptime : $UPTIME"				# Current date and time
echo "Date & Time : $CURRENT_DATE"
echo
 
 # License information (common for Linux systems)
echo "License Info : This Linux system is generally covered under the GNU General Public License (GPL)"



echo "----------------------------------------"			#Footer
echo " System report generated successfully"
echo "----------------------------------------"
