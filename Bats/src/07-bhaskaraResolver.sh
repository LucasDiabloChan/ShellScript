#!/bin/bash

# Declaração das variáveis
a=$( [[ $1 -gt 0 -a $1 -ne 0 ]] && echo $1 || exit "0" )
b=$( [[ $1 -gt 0 ]] && echo $1 || echo "0" )
c=$( [[ $1 -gt 0 ]] && echo $1 || echo "0" )

delta=0


# Declaração e definição da função
# bla bla bla
