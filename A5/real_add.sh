#! /bin/bash

echo "Enter number to add"
read -p "number 1:" num1
read -p "number 2:" num2

sum=$(echo "$num1 + $num2" | bc)

echo "The answer is $sum"
