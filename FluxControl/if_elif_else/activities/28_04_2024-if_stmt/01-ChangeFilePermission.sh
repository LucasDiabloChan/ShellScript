#!/bin/bash

# Author: asher_ren
# Date: 28_04_2024
# Description (en-us): create a script that receive a file name and change or remove his write permission
# Descrição (pt-br): criar um script que recebe um nome de arquivo, e altera remove a permissao de gravação.

echo "Type a filename to change it's write permission: "
read fileName

if [ ! -e $fileName ]; then
    echo "This archive does not exists..."

elif [ -d $fileName ]; then
    echo "You entered a directory name, is this okay? (Y/n)"
    read userChoice

    if [ $userChoice = "Y" -o $userChoice = "y" ]; then
        if [ -w $fileName ]; then
            chmod -w $fileName
        else
            chmod +w $fileName
        fi
    fi
else
    if [ -w $fileName ]; then
        echo "removed write permission from '$fileName'"
        chmod -w $fileName
    else
        echo "added write permission to '$fileName'"
        chmod +w $fileName
    fi
fi
