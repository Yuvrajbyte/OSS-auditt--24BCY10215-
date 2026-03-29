# OSS Audit Project

Student Details
Name: Yuvraj Singh  
Roll Number: [24BCY10215]

Chosen Software
MariaDB (Open-source relational database system, MySQL compatible)


Project Overview
This project explores open-source software concepts using MariaDB. It includes a study of the software’s origin, philosophy, license, Linux footprint, 
and hands-on shell scripting. The scripts automate system checks, analyze directories and log files, 
and even create a personalized open-source manifesto.

Scripts Included

Script 1 — System Identity Report
Displays key system information such as Linux distribution, kernel version, current user, home directory, system uptime, and the license of the operating system.

Script 2 — FOSS Package Inspector
Checks if MariaDB is installed on the system, shows its version, and provides a short description of the package using a case statement.

Script 3 — Disk and Permission Auditor
Loops through important system directories, reporting disk usage, owner, and permissions for each directory.

Script 4 — Log File Analyzer
Reads a log file line by line, counts how many lines contain a specified keyword (like ERROR or WARNING), and prints a summary.  

Script 5 — Open Source Manifesto Generator
Asks the user three questions interactively and generates a short personalized open-source philosophy statement saved to a text file (`manifesto.txt`).

How to Run the Scripts

Step 1: Make scripts executable
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

./script1.sh
./script2.sh
./script3.sh
./script4.sh <logfile> <keyword>
./script1.sh

Dependencies
  ->Linux environment(kali, linux, ubuntu, WSL)
  ->Bash shell
  ->Basic linux utilities: (dpkg, grep, awk, ds, ls, date)

Note
  ->All scripts are tested on a Linux system.
  ->Script 4 requires an existing log file to work correctly.
  ->Script 5 generates a file called manifesto.txt.
  ->This project demonstrates practical Linux skills, shell scripting, and understanding of open-source concepts.

