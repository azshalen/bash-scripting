#!/bin/bash

# printf 	- prints text similar to echo, does not add a \n at the end.
# tput cols	- gets terminal window number of columns
# tput lines	- gets terminal window number of lines

# Syntax:	printf "format\n" "arguments"
# Modifiers:
# %d	- signed decimal number
# %i	- signed decimal number
# %u	- unsigned decimal format
# %x	- unsigned hexadecimal numbers with lowercase letters (a-f)
# %X	- unsigned hexadecimal numbers with uppercase letters (A-F)
# %f	- float point numbers
# %s	- string
# %%	- % symbol

# Format with modifiers:
# N	- width of the field for output
# *	- placeholder for the width
# -	- to the left align output in the field (default: right align)
# 0	- pad result with leading zeros
# +	- put + sign before positive numbers and - for negative

cols=$(tput cols)

printf "%${cols}s" " " | tr " " "-"
printf "\n"
# Examples:

x=5
printf "%10d\n" "$x"
printf "%07d\n" "$x"
printf "%0.2f\n" "17.252"
printf "%020.10f\n" "12.4142"
printf "%-20.2f\n" "55.444"
#printf "%100s" "s"

