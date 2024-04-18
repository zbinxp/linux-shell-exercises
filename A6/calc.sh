#! /bin/bash

if [ $# -ne 3 ]; then
    echo "Error: Exactly three arguments are required."
    echo "Usage: $0 number1 operator number2"
    exit 1
fi

num1=$1
op=$2
num2=$3

case $op in
'+')
    result=$(expr $num1 + $num2)
    ;;
'-')
    result=$(expr $num1 - $num2)
    ;;
'*' | 'x' | 'X')
    result=$(expr $num1 \* $num2)
    ;;
'/')
    if [ $num2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
        exit 2
    fi
    result=$(expr $num1 $op $num2)
    ;;
*)
    echo "Error: Invalid operator."
    exit 3
    ;;
esac

echo "The result of $num1 $op $num2 is $result"