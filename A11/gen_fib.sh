#! /bin/bash

read -p "Enter the limit for fib series:" limit

if [ $limit -lt 1 ]; then
    echo "Enter a positive number"
    exit 1
fi

a=0
b=1
echo -n "$a"

while [ $b -le $limit ]; do
    echo -n ", $b"
    c=$((a+b))
    a=$b
    b=$c
done
echo