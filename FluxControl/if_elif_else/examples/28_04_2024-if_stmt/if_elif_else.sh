#!/bin/bash

# Author: asher_ren
# Date: 28/04/2005
# Description: use of 'if' statement in ShellScript

number_1=100
number_2=100

if (($number_2 > $number_1))
then #begin if
    echo "1º) The number '$number_2' is greater than '$number_1'."
elif (($number_2 < $number_1))
then #begin elif
    echo "2º) The number '$number_1' is greater than '$number_2'."
else #begin else
    echo "3º) The number '$number_1' is equals to '$number_2'."
fi #end if-elif-else statement

