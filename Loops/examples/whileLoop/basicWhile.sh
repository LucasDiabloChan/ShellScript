#!/bin/bash
contador=1

while (( contador < 10 ));
do
    echo "Messagem exibida $contador vez".
    (( contador=$contador+1 ))
done
