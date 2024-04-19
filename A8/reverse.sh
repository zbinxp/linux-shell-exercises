#! /bin/bash

if [ $# -eq 0 ]; then
    echo "Error: no argument passed"
    echo "Usage: $0 <number>"
    exit 1
fi

# method1: echo "$1" | rev | sed "s/^0*//"

# method2: iterate string in reverse order
for (( i=${#1}-1, leadZero=1; i>=0; i-- )); do
    if [ "${1:$i:1}" != "0" ]; then
        leadZero=0
    elif [ $leadZero -eq 1 ]; then
        continue
    fi
    echo -n "${1:$i:1}"
done
echo