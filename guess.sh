#!/bin/bash

NUM=$(((($RANDOM % 1000)) + 1))
echo -e "Try to guess the number I thought!\n"

ANSWER=0
until [ "$ANSWER" = "$NUM" ]; do
    read -p "Choose a number (1 to 1000): " ANSWER
    if (($ANSWER < $NUM)); then
        echo "  My number is higher than $ANSWER"
    elif (($ANSWER > $NUM)); then
        echo "  My number is lower than $ANSWER"
    fi
done
echo -e "\nCongratulations, you guessed correctly"