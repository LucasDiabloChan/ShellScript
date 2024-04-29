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
# Calling method: ./<exeArchiveName> <dir>

actualDir=$(pwd)

if [ -e $1 ]; then
        echo "This archive or directory already exists."
        exit 0
fi

if [ -e $actualDir/$1 ]; then
        echo "The file '$2 already exists!'"
        exit 0
fi

echo "# - - - - - - - - - - - - - - - - - - - - #"
mkdir $1
echo "Directory '$1' created"
echo ""


name1="MyFrickingDumbLife.txt"
name2="EverebodyAreBirds.xml"
name3="WhoPeedInMyJacket.ipynb"
name4="BroGotOhioRizz.exe"

echo "choose a name for the archive (1-4): "
echo "(1) - $name1"
echo "(2) - $name2"
echo "(3) - $name3"
echo "(4) - $name4"
read userChoice
echo ""

case $userChoice in
        "1")
            touch $actualDir/$1/$name1
            echo "File created in '~/$1/$name1'"
            ;;
        "2")
            touch $actualDir/$1/$name2
            echo "File created in '~/$1/$name2'"
            ;;
        "3")
            touch $actualDir/$1/$name3
            echo "File created in '~/$1/$name3'"
            ;;
        "4")
            touch $actualDir/$1/$name4
            echo "File created in '~/$1/$name4'"
            ;;
esac
echo "# - - - - - - - - - - - - - - - - - - - - #"
