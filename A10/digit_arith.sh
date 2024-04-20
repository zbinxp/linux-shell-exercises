#! /bin/bash

read -p "Enter the string:" str

if [ ${#str} -lt 2 ]; then
    echo "Enter the string: at leat one number and one operator"
    exit 1
fi

len=${#str}
op=${str:$len-1:1}
ret=${str:0:1}
case $op in
+) 
    type="Addition"
    for ((i=1; i<$len-1; i++)); do
        ret=$((ret+${str:$i:1}))
    done
    ;;
-) 
    type="Subtraction"
    for ((i=1; i<$len-1; i++)); do
        ret=$((ret-${str:$i:1}))
    done
    ;;
\*) 
    type="Multiplication"
    for ((i=1; i<$len-1; i++)); do
        ret=$((ret*${str:$i:1}))
    done
    ;;
/) 
    type="Division"
    for ((i=1; i<$len-1; i++)); do
        ret=$((ret/${str:$i:1}))
    done
    ;;
*) 
    echo "Invalid operator"
    exit 1
    ;;
esac

echo "$type of $str is $ret"