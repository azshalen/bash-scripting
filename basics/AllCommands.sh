#!/bin/bash

#This is the list of all commands and some options explained. Everything will be commented out.

<<'COM'
student="Viktor"	- declaring a variable
echo "Text"		- print something on the screen
echo "$student"		- print the value of the variable 'student'
echo "${student}"	- referencing a parameter using '${}'

PATH | HOME | USER | HOSTTYPE | HOSTNAME	- Bash Shell variables
echo "${PATH HOME}"

echo ${name,}		- makes first character lowercase
echo ${name,,}		- makes all characters lowercase
echo ${name^}		- makes first character uppercase
echo ${name^^}		- makes all characters uppercase
echo ${#name}		- number of characters
echo ${name:0:4}	- slicing, print first four characters
echo ${name:3}		- slicing, start from character 3
echo ${name:-5:2}	- slicing, start from 5th character, but only print 2 from left
echo ${name:-4}		- slicing, start from 4th character from the back

time=$(date +%d-%m-%y)	- saving command output in a variable

ARITHMETIC:
echo $((2 + 2))		- arithemtic operation within a parameter
x=12 ; y=5		- declaring variable value
echo $(($y + $x))	- one way to perform arithmetic
echo $((x + y))		- another way to perform arithemtic
echo $((x % y))		- module, remainder calculation
echo $((x ** y))	- power, x to the power of y

bc command		- decimal numbers
echo "scale=2; 5/2" | bc

~	- same as the HOME
PWD	- print working directory
OLDPWD	- previous working directory

BRACE EXPANSION:
echo {Jan,Feb,Mar,Apr,May,Jun,J ul,Aug,Sep,Oct,Nov,Dec}	- array basically
echo {1..10} 	- will print: 1 2 3 4 5 6 7 8 9 10, must have clear range
echo {a-z}	- will print: a b c d .. z
echo {1..10..3}	- will print 1 4 7 10, use steps of 3

METACHARACTERS: | & ; () 'space' 'tab' 'new line' <> {}

QUOTING:
\	- removes special meaning from next character
' '	- single quotes, removes special meaning from all characters inside
" "	- double quotes, removes special meaning from all except $ \ and `` (not single quotes '')

WORD EXPANSION:
num="1 2 3"
Try: touch $num and touch "$num"
touch $num 	- creates 3 files, 1 2 and 3
touch "$num"	- creates 1 file called '1 2 3'

GLOBBING: Special Characters: * ? []
[ab]		- only 'a' or 'b'
[a-z]		- range matching all letters from a-z only once
[0-9]		- range matching all numbers from 0-9 only once

REQUESTING USER INPUT:
read -p "This is a prompt the user will see." input	- read input with a prompt and assign it to variable input
read -t timer						- read input but set a timer
read -s secret						- read input but input will not be seen

POSITIONAL PARAMETERS:
	$0	- current shell or script name
	$1	- first parameter
	$2	- second ..
	$3	- third etc.

$#	- number of parameters entered
$@	- replaces $1 $2 $3 $N, is considered its own word, or all in " "
$*	- same as "$@", for "$*" use IFS="_"

SELECT COMMAND:
select day in mon tue wed thu fri sat sun; do echo $day; done 	-will loop, you can select number

LIST OPERATION: ; & && ||

;	- separate commands, order of execution instead of line by line is on one line one after the other
&	- send command to run in the background, can check with 'jobs'
&&	- execute second command ONLY IF first one SUCCEEDED
||	- execute second command ONLY IF first one FAILED

TEST COMMANDS:
[ 2 -gt 1 ]; echo $?	- test if 2 is greater than 1
-gt	- greater than			>
-lt	- less than			<
-eq	- equal				=
-le	- less or equal to		<=
-ge	- greater or equal to		>=
-ne	- not equal to			!=
-e	- exists
-x	- exists and is executable
-d	- exists and is a directory
-f	- exists and is a file
-r	- exists and has read perm
-w	- exists and has write perm
-nt	- newer than
-ot	- older than
-n	- non empty
-z	- if zero in string

IF STATEMENT:
if [ 2 -eq 1 ]				- test condition with 'if'
then					- run if statement is true
	echo "Statement is true."
elif [ 2 -gt 1 ]			- another test condition chained with 'elif'
then					- then is used after 'if' and 'elif' statements
	echo "Two is greater than one."	
else					- else run this
	echo "Statement is false."
fi					- escape the if statement

CASE STATEMENT:		- similar to 'if', they use 'case' 'esac' to start and end

read -p "Enter a single digit number lower than 4." number

case $number in
	0)	echo "Entered number is 0.";;	- the value of 'number' variable is tested if it matches this case as a value
	1)	echo "Entered number is 1.";;	- same for all below
	2)	echo "Entered number is 2.";;
	3)	echo "Entered number is 3.";;
	*)	echo "Invalid input.		- catch all case, must be at the end to make sense
esac

WHILE LOOPS:
num=20
while [ $num -gt 0 ]		- test condition for the while loop
do				- required or add in the 'while' above "while [ $value -gt 0 ]; do"
	echo $num		- what to do in while loop
	num=$(($num - 1))	- reduce value of the test condition so we do not create an infinite loop
done				- exit the while loop

GETOPS: Command 'getopts' means 'get options' provided to the script.
getopts ":c" opt		- getopts looks for option c without an argument
getopts "a:bc" opt		- getopts looks for -a that requires an argument and options -b and -c
getopts string name [args]	- args are optional, if provided 'getopts' will parse these arguments instead of positional parameters

GETOPTS Examples:

read -p "Enter 'a' or 'b':" optString

while getopts ":$optString" opt
do
	case $opt in
	a)	echo "Option -a was triggered.";;
	b)	echo "Option -b was triggered.";;
	?)	echo "Invalid option: -${OPTARG}."
		exit 1;;
	esac
done


COM


:<<'MYCOM'
echo "This is another multi line comment."
MYCOM


while getopts "a:b:c" opt
do
	case $opt in
        a)      echo "Option -a was triggered. Argument: ${OPTARG}";;
        b)      echo "Option -b was triggered. Argument: ${OPTARG}";;
	c)	echo "Option -c was triggered.";;
        *)      echo "Invalid option: -${OPTARG}."
                exit 1;;
        esac
done
