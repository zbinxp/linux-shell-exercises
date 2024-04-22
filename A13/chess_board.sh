#! /bin/bash

read -p "Enter the width:" num
if [ $num -lt 1 ]; then
    echo "Error: invalid width"
    exit 1
fi

for ((i=1;i<=$num;i++)); do
    for ((j=1;j<=$num;j++)); do
        if [ $(( ($i+$j)%2 )) -eq 0 ]; then
            echo -n -e "\033[40m  \033[0m"
        else
            echo -n -e "\033[47m  \033[0m"
        fi
    done
    echo
done