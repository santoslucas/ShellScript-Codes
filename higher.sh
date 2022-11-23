#!/bin/bash

read -p "Primeiro número: " NUM1
read -p "Segundo número: " NUM2
read -p "Terceiro número: " NUM3

RESULT=0
if (($NUM1 >= $NUM2)) 
then
    if (($NUM1 >= $NUM3)) 
    then
         RESULT=$NUM1
    fi
fi
if (($NUM2 >= $NUM1)) 
then
    if (($NUM2 >= $NUM3)) 
    then
         RESULT=$NUM2
    fi
fi
if (($NUM3 >= $NUM1)) 
then
    if (($NUM3 >= $NUM2)) 
    then
         RESULT=$NUM3
    fi
fi
echo -e "\nO maior número é o $RESULT"