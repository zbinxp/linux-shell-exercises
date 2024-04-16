#! /bin/bash

echo -n "input n:"
read n
if ! [[ $n =~ ^[0-9]+$ ]]; then
    echo "Error: n is not a number"
    exit 1
fi
for ((nline=1,i=1;i<=n;nline++)) do
    for ((j=1;j<=nline && i<=n;j++,i++)) do
        echo -ne "$i "
    done
    echo
done