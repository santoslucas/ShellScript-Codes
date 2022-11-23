#!/bin/bash

set $(date)
data=$5
hora=${data:0:2}

set $(whoami) #pega o primeiro nome
nome=$1
set $(cat /etc/passwd | grep $nome) #filtra o nome no arquivo /etc/passwd
nome=$1
set $(echo "$nome" | sed 's/:/ /g') #na linha filtrada, substitui ":" por " "
nome=$5 #pega o quinto argumento, que eh o nome completo

if (($hora < 12))
then
    echo "Bom dia $nome, seja bem vindo."
else
    if (($hora < 18))
    then
        echo "Boa tarde $nome, seja bem vindo."
    else
        echo "Boa noite $nome, seja bem vindo."
    fi
fi