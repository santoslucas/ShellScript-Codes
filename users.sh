#!/bin/bash

num=1
for user in $(cat /etc/passwd | cut -d: -f1); do
    echo "User $num: $user"
    num=$(($num+1))
done