#! /bin/bash

read -p "Enter the limit: " limit

if [ $limit -lt 1 ]; then
    echo "Error: invalid limit"
    exit 1
fi

a=0
b=1
while [ $b -le $limit ]; do
    echo -n "$a "
    c=$((a+b))
    a=$b
    b=$c
done
echo
echo "Greatest val: $a"