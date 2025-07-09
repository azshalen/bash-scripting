#!/bin/bash

#Write a script that will:
#	1 - Check all files within /home/azsha/bash-scripting and add the execute permission if the file is a Bash Script.
#	2 - Accept input as a path or file and check if it has execute permissions, if not, add it.

#Iterate over all files within the bash-scripting directory.
if [[ $# -lt 1 ]]; then
	for i in $(find ~/bash-scripting/* -type f); do
		check=$(file $i)

		if [[ $check == *"shell"* ]]
		then
			if [[ ! -x $i ]]; then
				chmod u+x $i
			fi
		fi
	done
	exit 0
fi

getopts ":f:" opt
case $opt in		
	f)
		if [[ ! -f ${OPTARG} ]]; then
		        echo "Invalid path or argument provided not a file."
			exit 1
		else
			chmod u+x ${OPTARG}
		fi
		;;

	:)	
		echo "Option missing argument."
		exit 1
		;;
	?)	
		echo "Invalid option."
		exit 1
		;;
	*)	
		echo "Invalid argument. Use the option -f and provide the file name or path to the file."
		exit 1
		;;
esac
