#!/bin/bash

numberArray=(1 2 3 4 5 6)
myArray=("first element" "3" 5 "Something to do" " " "Another one" "stringz" 6)

#Show third element. Like in programming language arrays, the index starts from 0, so the first element has the index of 0.
echo "Fifth element of the arrays."
echo ${numberArray[4]}
echo ${myArray[4]}

echo ""
echo "First element of the arrays."
echo ${numberArray[0]}
echo ${myArray[0]}

var="1 2 3 Test"

echo ""
echo "Variable: var=\"1 2 3 Test\""
echo "Show the variable using: \$var \"\$var\" \${var} \"\${var}\""
echo $var
echo "$var"
echo ${var}
echo "${var}"
echo "Now use touch on var using the above one by one."

echo ""
echo "Show the arrays in this order: \${myArray} \"\${myArray}\""
#Will ignore the " " value in the array and not create a value of empty space.
echo ${myArray[@]}
#Will create the extra space in output becase of the " " value in the array.
echo "${myArray[@]}"

echo ""
echo "Offset values and length from the array that has 0-20 values. [@]:2:10 start from second index, show only ten values."
numArray=(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)
echo ${numArray[@]:4:6}

echo ""
echo "To add a value to an array, you can use array+=5 and it will add an index at the end and the value."
myNewArray=(1 2 3)
echo "My new array: ${myNewArray[@]}"
echo "Now use myNewArray+=5 to add 5 to it."
myNewArray+=(5)
echo "Show it again: ${myNewArray[@]}"

echo ""
echo "You can print array index numbers with \${!array[@]}"
echo ${!myNewArray[@]}

#This converts whatever it reads on its standard input into an array.

readarray matrix < ../text-files/numbers.txt
echo ${matrix[@]}

#readarray -t will remove the trailing \n from the array.
#Try using readarray -t name < <(ls)



