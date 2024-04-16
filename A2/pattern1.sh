#! /bin/bash

echo -n 'Input n:'
read n
# if n is not a number, return error
if ! [[ $n =~ ^[0-9]+$ ]]; then
    echo "Error: n is not a number"
    exit 1
fi
for ((i=1; i<=n; i++)) do
    for ((j=1; j<=i; j++)) do
        echo -ne "$j "
    done
    echo
done