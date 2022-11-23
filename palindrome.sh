#!/bin/bash
while read -r INPUT; do
    if [ -z "$INPUT" ]; then
        exit 1
    fi
    INPUT=$(echo "$INPUT" | sed "s/[^A-Za-z]//g"| tr '[:upper:]' '[:lower:]')

    if [ "$INPUT" = "$(echo "$INPUT" | rev)" ]; then
        printf "Yes\n"
    else
        printf "No\n"
    fi
done