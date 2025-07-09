#!/bin/bash

#Write a script that will accept user input in many ways.
#Also make use of getopts command.

#Read user input and assign it to a variable 'var'.
<<'COM'
read -p "What is your name? " var
echo "Hello ${var}."
COM

# :ab in this case options do not require an argument. ?) is a special character matched when an invalid option is passed, get value with
# the OPTARG variable.
# :a:b: in this case both options require an argument. :) is a special character matched when an option that is expected to have an argument
# is passed without one, when that happens 'getopts' assigns the option to the 'OPTARG' variable.

# If a character is followed by a ':' it means that option requires an argument.

while getopts ":a:b:" opt
do
	case ${opt} in
		a)
			if [ ${OPTARG} = "-${opt}" ]
			then
				echo "Cannot use an argument like the option."
				exit 1
				break
			else
				echo "The option used is: -a and the value is: ${OPTARG}"
			fi
			;;	
		b) 
			echo "The option used is: -b and the value is: ${OPTARG}"
			;;
		:) 
			echo "Option -${OPTARG} requires an argument."
			exit 1
			;;
		?) 
			echo "You used an invalid argument: -${OPTARG}" 
			exit 1
			;;
	esac
done
