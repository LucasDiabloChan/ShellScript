#!/bin/bash

# Author: asher_ren
# Date: 28_04_2024
# Description (en-us): receive a file name and, if it's empty, delete it. But ask to the user, before that.
# Descrição (pt-br): criar um script que recebe o nome de um arquivo e se o mesmo não tiver conteúdo apaga, mas pede permissão para o usuario.

if [ ! -e $1 ]; then
    echo "The file $1 does not exists."
fi

if [ -f $1 -a ! -s $1 ]; then
    echo "Can we delete the file '$1'? (Y/n)"
    read userChoice

    if [ $userChoice="Y" -o $userChoice="y" ]; then
        rm $1
        echo "File deleted successfully!"
    else
        echo "The file was not deleted."
    fi

    exit 6
fi

echo "The file must be empty to delete it!"
