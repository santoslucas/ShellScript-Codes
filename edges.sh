#!/bin/bash
H=$1
L=$1

for NUM in $@; do
    if ((NUM > H)); then
        H=$NUM
    elif ((NUM < L)); then
        L=$NUM
    fi
done

echo "Lower: $L"
echo "Higher: $H"