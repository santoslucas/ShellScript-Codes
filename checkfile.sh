#!/bin/bash

#permissoes
R="-"
W="-"
X="-"

if [ -z "$1" ] 
then
    echo "Usar: ./checkfile [Arquivo]"
else
    if [ -e "$1" ]  
    then #existe -> verifica permissoes
        if [ -r "$1" ]
        then
            R="r"
        fi

        if [ -w "$1" ]
        then
            W="w"
        fi

        if [ -x "$1" ]
        then
            X="x"
        fi
    fi

    if [ -c "$1" -o -b "$1" -o -f "$1" ] 
    then #arquivo
        echo "$1: arquivo ($R$W$X)"
    else 
        if [ -d "$1" ] 
        then #diretorio
            echo "$1: diretório ($R$W$X)"
        else
            if [ -e "$1" ]  
            then #desconhecido
                echo "$1: desconhecido ($R$W$X)"
            else #invalido
                echo "$1: inválido"
            fi
        fi
    fi
fi