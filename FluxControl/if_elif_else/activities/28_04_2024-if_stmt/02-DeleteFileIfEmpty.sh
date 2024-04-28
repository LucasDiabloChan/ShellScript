#!/bin/bash

# Author: asher_ren
# Date: 28_04_2024
# Description (en-us): receive a file name and, if it's empty, delete it. But ask to the user, before that.
# Descrição (pt-br): criar um script que recebe o nome de um arquivo e se o mesmo não tiver conteúdo apaga, mas pede permissão para o usuario.

echo "Type a filename to delete: "
read fileName

if [ -e $fileName]
then
    echo "file does not exists!"
fi
