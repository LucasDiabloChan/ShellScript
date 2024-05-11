#!/bin/bash

h=$( [[ $1 -gt 0 ]] && echo $1 || echo "0" )
w=$( [[ $2 -gt 0 ]] && echo $2 || echo "0" )

echo "scale=2; $h * $w" | bc
