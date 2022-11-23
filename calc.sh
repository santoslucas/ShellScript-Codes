#!/bin/bash

if [ -z "$1" -o -z "$2" -o -z "$3" ] 
then
    echo "Usar: ./calc [Número] [Operador] [Número]"
else
    case $2 in
        +) echo "$1 + $3" | bc -l ;;
        -) echo "$1 - $3" | bc -l ;;
        x) echo "$1 * $3" | bc -l ;;
        /) echo "$1 / $3" | bc -l ;;
        *) echo "$2: operação inválida" ;;
    esac
fi