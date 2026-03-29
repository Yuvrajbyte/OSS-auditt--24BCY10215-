#!/bin/bash
# ---------------------------------------------
# Script 4: Log File Analyzer
# Author: Yuvraj Singh
# Goal: Reads a log file, counts how many
# lines contain a given keyword
# ---------------------------------------------

LOGFILE=$1				# Taking inputs from command line
KEYWORD=$2

#to check if arguments are provided
if [ -z "$LOGFILE" ] || [ -z "$KEYWORD" ]; then
	echo "Usage: $0 <logfile> <keyword>"
	exit 1
fi

if [ ! -f "$LOGFILE" ]; then		# Checking if file exists
	echo "Error: File not found"
	exit 1
fi

COUNT=0 					#counter variable

echo "----------------------------------------"
echo "Analyzing Log File 	: $LOGFILE"
echo "Searching Keyword 	: $KEYWORD"
echo "----------------------------------------"

while read -r LINE				#line by line reading of file
do
	# Checking if line contains keyword
	if echo "$LINE" | grep -q "$KEYWORD"; then
		COUNT=$((COUNT + 1))
	fi
done < "$LOGFILE"

echo "Total matches found : $COUNT"
echo "----------------------------------------"
echo "Analysis Completed"
