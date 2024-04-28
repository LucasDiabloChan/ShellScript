#!/bin/bash

# Author: asher_ren
# Date: 28_04_2024
# Description (en-us): create a script that receive a file name and change or remove his write permission
# Descrição (pt-br): criar um script que recebe um nome de arquivo, e altera remove a permissao de gravação.

echo "Type a filename to change it's write permission: "
read fileName

if [ -e $fileName]
then
    echo "file does not exists!"
fi
