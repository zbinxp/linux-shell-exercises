#! /bin/bash

if [ $# -lt 1 ]; then
    echo "usage: $0 string"
    exit 1
fi

for str in "$@"; do
    printf "%-10s %2d\n" "$str" ${#str}
done