#!/bin/bash

#Script to practice iteration and reading files.

while read input
do
	echo "$input"

#The below done reads the input from the argument provided with the script such as: sh iteration.sh my-text-file.txt
#done < $1
done < ../text-files/lines.txt
