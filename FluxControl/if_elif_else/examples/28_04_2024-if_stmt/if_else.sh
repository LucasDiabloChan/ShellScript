#!/bin/bash

# Author: asher_ren
# Date: 28/04/2005
# Description: use of 'if/else' statement in ShellScript

number_1=100
number_2=50

if (($number_2 > $number_1))
then #begin if
    echo "1º) The number '$number_2' is greater than '$number_1'."
else #begin else
    echo "2º) The number '$number_1' is greater than '$number_2'."
fi #end else

