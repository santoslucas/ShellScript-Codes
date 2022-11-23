#!/bin/bash

dices=(0 0 0 0 0 0)
SIZE=${1:-"0"}

for (( i=0; i < $SIZE; i++)); do
    num=$(($RANDOM % 6))
    dices[num]=$((${dices[num]}+1))
done

for (( i=0; i < 6; i++)); do
    echo "Dice $(($i+1)): ${dices[i]}"
done