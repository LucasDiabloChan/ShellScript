#!/bin/bash

# Author: asher_ren
# Date: 28_04_2024
# Description (en-us):
#    |--> Receive a dir name and checks if it exists,
#    |--> return an error if exists, if not create a dir
#    |--> and a file, definied by the user, by choosing
#    |--> a nome from a menu that have 4 names options.
#    |--> You must use the 'case' statement.
# Descrição (pt-br):
#    |--> Obtém um nome de diretório e verifica se o mesmo
#    |--> existe, devolve um erro se existir, senão cria
#    |--> um diretório e um arquivo, que devem ser defini-
#    |--> dos pelo usuário, através de menu com 4 opções
#    |--> de nomes. Use a estrutura 'case'
# Calling method: ./<exeArchiveName> <dir> <file>

actualDir=$(pwd)

if [ -e $1 ]; then
        echo "This archive or directory already exists."
        exit 0
fi

if [ -e $actualDir/$1/$2 ]; then
        echo "The file '$2 already exists!'"
        exit 0
fi

if [ -z $2 ]; then
        echo "Invalid archive name (second parameter)."
        exit 0
fi

mkdir $1
echo "Directory '$1' created"

touch $actualDir/$1/$2
echo "File created in '~/$1/$2'"ahser_ren:
