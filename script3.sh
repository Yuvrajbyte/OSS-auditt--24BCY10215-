#!/bin/bash
# ---------------------------------------------
# Script 3: Disk and Permission Auditor
# Author: Yuvraj Singh
# Goal: Checks disk usage and permissions of important system directories
# ---------------------------------------------

# List of important directories to check
DIRECTORIES=("/" "/home" "/etc" "/var")

echo "----------------------------------------"			#Header
echo " Disk and Permission Audit Report"
echo "----------------------------------------"

# Looping through each directory using for loop
for DIR in "${DIRECTORIES[@]}"
do
	echo
	echo "Checking Directory : $DIR"

	# Getting disk usage using df
	# tail -1 ensures we only get the relevant line
	USAGE=$(df -h "$DIR" | tail -1 | awk '{print $5}')
	echo "Disk Usage : $USAGE"

	# Getting owner and permissions using ls -ld
	# awk extracts specific fields:
	# $1 = permissions, $3 = owner
	PERM=$(ls -ld "$DIR" | awk '{print $1}')
	OWNER=$(ls -ld "$DIR" | awk '{print $3}')

	echo "Owner : $OWNER"
	echo "Permissions : $PERM"

	echo "----------------------------------------"
done

echo “Audit completed successfully” 				#Footer

