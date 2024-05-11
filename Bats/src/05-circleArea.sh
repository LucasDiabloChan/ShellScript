#!/bin/bash

r=$( [[ $1 -gt 0 ]] && echo $1 || exit "0" )

# Default value of PI (only the fifty firts numbers)
PI=$( echo "scale=50; 4*a(1)" | bc -l )
echo $PI


echo "scale=4; $PI * ($r * $r)" | bc


