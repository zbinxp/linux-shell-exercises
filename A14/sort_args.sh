#! /bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <number> ..."
    exit 1
fi

args="$@"
echo "1: ascending"
echo "2: descending"
read -p "Select an option:" option

if [ $option -eq 1 ]; then
    echo $(echo $args | tr ' ' '\n' | sort -n)
elif [ $option -eq 2 ]; then
    echo $(echo $args | tr ' ' '\n' | sort -nr)
else
    echo "Error: invalid option"
    exit 1
fi