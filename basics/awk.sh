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

#awk -F ":" '{print $1,$3,$5}' /etc/passwd

# Will print whole line, $0 means current line.
#awk '{print $0}' /etc/passwd

# Will print whole lines starting from line number 5.
#awk 'NR >= 5 {print $0}' /etc/passwd

# AWK BEGIN & END
# awk 'BEGIN {start_action} PATTERN/CONDITION {action} END {stop_action}' file_name
# awk -f awk.script file_name

# BEGIN	- block is performed before reading the file
# END	- block is performed after processing the file

awk 'BEGIN {print "-"} /nologin/ {print $0} END {print "-"}' /etc/passwd

#awk '{a=$1; b=$2; print a+b}' file_name.txt (file_name.txt contains 2 6)
