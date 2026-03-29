#!/bin/bash
#-------------------------------------------------
# script 2: FOSS package inspector
# Author: Yuvraj Singh
# Goal: Check if MariaDB/MySQL is installed, show version, and explain its purpose
#-------------------------------------------------

PACKAGE="mariadb-server"			# Defining package name
	# Checking if the package is installed using dpkg
	# dpkg -l lists installed packages, grep filters our package
	if dpkg -l | grep -q "$PACKAGE"; then
		echo "Package Status : Installed"

	#getting version information
	VERSION=$(dpkg -l | grep "$PACKAGE" | awk '{print $3}')
	echo "Version		: $VERSION"

	#Using case statement to describe the package
	case "$PACKAGE" in
		mariadb-server)
			echo "Description		: open source relational database server (MySQL compatible)"
			;;
		mysql-server)
			echo "Description 		: Popular relational database management system"
			;;
		*)
			echo "Description		: Package info not available"
			;;

	esac
else 
	echo "Package Status : Not Installed"
	echo "Please install the package to inspect it."
fi
