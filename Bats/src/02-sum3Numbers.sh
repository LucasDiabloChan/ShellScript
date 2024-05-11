#!/bin/bash

num=$( [[ $1 -gt 0 ]] && echo $1 || echo "0" )

nois=$( [[ $2 -gt 0 ]] && echo $2 || echo "0" )

nes=$( [[ $3 -gt 0 ]] && echo $3 || echo "0" )

echo "scale=2; $num + $nois + $nes" | bc
