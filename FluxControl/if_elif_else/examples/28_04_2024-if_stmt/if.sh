#!/bin/bash

# Author: asher_ren
# Date: 28/04/2005
# Description: use of 'if' statement in ShellScript

number_1=10
number_2=500

if (($number_2 > $number_1))
then #begin if
    echo "1º) The number '$number_2' is greater than '$number_1'."
fi #end if
