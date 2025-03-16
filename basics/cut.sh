#!/bin/bash

#Using the 'cut' command, options, examples.

#Options:
#	-c 1		- first character
#	-c 4-9		- fouth to ninth character
#	-c 4-9,12	- fourth to ninth and the twelth character
#	-f 1,3		- print first and third field
#	-d '!'		- delimeter, which character is to separate the fields
#	--output-delimiter=" "	- set the output delimiter to 'space'

#Files to work with: diskspace.txt  lines.txt  memory.txt  numbers.txt  passwd.txt  process.txt  uname.txt

cat ~/bash-scripting/text-files/passwd.txt | cut -d":" -f 1,3,4 --output-delimiter="-"
