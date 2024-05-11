#!/bin/bash

num=$( [[ $1 -gt 0 ]] && echo $1 || exit "0" )

cont=1

until [ $cont -eq 11 ]; do
    echo "$1 x $cont = "$( echo "$1 * $cont" | bc )

    (( cont=$cont+1 ))
done
