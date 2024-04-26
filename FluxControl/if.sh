#!/bin/bash

# - - - - - - - - - - - - - - - - - - #
# - - if / elif / else - - #
# echo -e 'Insira um valor numérico: '
# read num

# echo -e 'Insira um segundo valor numérico: '
# read nois

# if (($num > $nois)) 
# then
#     echo $num' > '$nois
# elif (($num == $nois)) 
# then 
#     echo $num' = '$nois
# else
#     echo $num' < '$nois
# fi
# - - - - - - - - - - - - - - - - - - #


# - - - - - - - - - - - - - - - - - - #
# - - com variável de ambiente (1) - - #
# if (($1 > $2)) 
# then
#     echo $num' > '$nois
# elif (($1 == $2)) 
# then 
#     echo $num' = '$nois
# else
#     echo $num' < '$nois
# fi
# - - - - - - - - - - - - - - - - - - #

# - - - - - - - - - - - - - - - - - - #
# - - com variável de ambiente (2) - - #
# PARAM1=$1

# if [ -d $PARAM1 ];
# then
#   echo "Voce informou um diretorio!"
# elif [ -f $PARAM1 ]
# then
#   echo "Voce informou um arquivo!"
# else
#   echo "Eh apenas um texto!"
# fi
# - - - - - - - - - - - - - - - - - - #


# - - - - - - - - - - - - - - - - - - #
# - - recebendo um arquivo - - #
# PARAM1=$1

# # ! NOT (NAO)
# # -e Verifica se existe
# if [ ! -e $PARAM1 ];
# then
#   echo "Arquivo nao existe"
  
# # -f Verifica se eh arquivo.
# # -a Logica AND (E)
# # -s Verifica se o arquivo é maior que zero
# elif [ -f $PARAM1 -a -s $PARAM1 ]
# then
#   echo "Voce informou um arquivo e ele nao esta vazio."
# elif [ ! -f $PARAM1 ]
# then
#   echo "O que voce informou nao eh um arquivo!"
# else
#   echo "Voce informou um arquivo e ele esta vazio."
# fi
# - - - - - - - - - - - - - - - - - - #





