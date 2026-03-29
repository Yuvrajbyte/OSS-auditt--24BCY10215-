#!/bin/bash
# ---------------------------------------------
# Script 5: Open Source Manifesto Generator
# Author: Yuvraj Singh
# Goal: Takes user input and generate a personalized open-source
#                                                                                              statement
# ---------------------------------------------

# Asking user for input
echo "Answer a few questions to generate your Open Source Manifesto:"
echo

read -p "What do you like about open source? : " LIKE
read -p "Why do you think open source is important? : " IMPORTANCE
read -p "How would you contribute to open source? : " CONTRIBUTE

DATE=$(date)			#current date

FILE="manifesto.txt"		#output file name

#using > to write into the file
echo "----------------------------------------" > $FILE
echo " Open Source Manifesto" >> $FILE
echo "----------------------------------------" >> $FILE
echo "Generated on: $DATE" >> $FILE
echo >> $FILE

#creating the paragraph (string combination)
echo "I think open source is valuable because $LIKE. According to me it is important because $IMPORTANCE. In the future, I would like to contribute by $CONTRIBUTE. Being an active part of the open source community allows me to learn, share, and grow as a developer." >>$FILE

echo >> $FILE
echo "----------------------------------------" >> $FILE

# Display message
echo
echo "Your manifesto has been generated and saved to $FILE"
