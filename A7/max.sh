#! /bin/bash

if [ $# -eq 0 ]; then
    echo "Error: no arguments"
    exit 1
fi

max=$1
for num in "$@"; do
    if [ "$num" -gt "$max" ]; then
        max=$num
    fi
done

echo $max