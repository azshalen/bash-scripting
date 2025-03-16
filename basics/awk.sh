#!/bin/bash

#Simple usage of the 'awk' command to grep fields.
#Text files: diskspace.txt  lines.txt  memory.txt  numbers.txt  passwd.txt  process.txt  uname.txt

#Options:
#	-F ":"		- field separator, default are space or tab
#	-v var="value"	- declaring a variable
#	NR		- value of number of lines
#	NF		- number of fields

cat ~/bash-scripting/text-files/passwd.txt | awk -F ":" '{print $1,$3,$5}'
