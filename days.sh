#!/bin/bash

days=(Mon Tue Wed Thu Fri Sat Sun)

for day in ${days[@]}; do 
    if [ "$day" == "Sat" -o "$day" == "Sun" ]; then
        echo "$day (weekend)"
    else
        echo "$day (weekday)"
    fi
done