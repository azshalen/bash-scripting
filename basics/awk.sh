#!/bin/bash

# Simple usage of the 'awk' command to grep fields.
# Text files: diskspace.txt  lines.txt  memory.txt  numbers.txt  passwd.txt  process.txt  uname.txt

# awk	- programming language, no compiling, allows users to add variables, numberic functions, string functions,
#	and logical operators
# 	- in Unix is like a scripting language for text processing

# Predefined Variables:
# NR	- number of rows (records)
# NL	- number of fields
# $0	- this file

# Options:
#	-F ":"		- field separator, default are space or tab
#	-v var="value"	- declaring a variable
#	NR		- value of number of lines
#	NF		- number of fields
#	-f file		- specify a file that contains an awk script

cat ~/bash-scripting/text-files/passwd.txt | awk -F ":" '{print $1,$3,$5}'



