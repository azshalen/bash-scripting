#!/bin/bash

#Usage for grep and options.
#grep "string" < input.txt or cat input.txt | grep "string" to show every line containing the string "string".
#Options:
#	-i	- ignore case, "string" will match "StRing" "STRING" "strING" etc.
#	-v	- show every line except matched lines, so any line not containing "string"
#	-w	- match whole word meaning "stringsss" will not be matched
#	-n	- display matched line number
#	-c	- display count of matched lines
#	-A 3	- display 'N' lines AFTER match
#	-B 4	- display 'N' lines BEFORE match
#	-C 4	- display 'N' lines AROUND match
#	-r	- search in current directory and recursively into subdirectories
#	-l	- print file names
#	-h	- hide file names

#Show lines containing user 'azsha' in /etc/passwd
cat /etc/passwd | grep "azsha"

#Search for provided string inside /bash-scripting directory recursively
cd $HOME/bash-scripting/ && grep -riw "every line"

#Advanced Usage:
#	-f 'file'		- search using the strings in the file, one by one, not commonly used
#	-e 'str1' -e 'str2'	- multi argument search like lines from a file provided with the -f option
#	-E			- use regular expression (regEx) same as 'egrep' command

#Patterns:
#	xy|pq	- match 'xy' OR 'pq'
#	^abc	- line starts with 'abc'
#	abc&	- line ends with 'abc'
#	\	- remove special meaning from a symbol, ignore case
#	^$	- empty lines
#	.	- matches any character
#	\b	- boundary, pattern match is bounded by a non-word character, like a space, everything apart from numbers, letters and _
#	?	- preceeding character is optional and will match at most ONCE
#	*	- preceeding character is matched ZERO or MORE times
#	+	- preceeding character is matched ONCE or MORE times
#	[abc]	- matches lines that have 'a', 'b' or 'c'
#	[a-z]	- range from 'a' to 'z' matching any character
#	^[abc]	- line starts with 'a', 'b' or 'c'
#	{5}	- matches preceeding character 5(N) times, example f{3} will match at least 'fff' but 'ffffff' will be matched if f{3}\b is not used
#	{2,}	- matches two times minimum

#Additional Patterns:
#	[[:alnum:]]	- alpha numeric character
#	[[:alpha:]]	- character
#	[[:blank:]]	- space, tab
#	[[:digit:]]	- digit 0-9
#	[[:upper:]]	- uppercase character
#	[[:lower:]]	- lowercase character
#	[[:space:]]	- tab, new line, vertical tab, space
