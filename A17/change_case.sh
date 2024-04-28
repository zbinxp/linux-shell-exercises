#! /bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <file or directory>"
    exit 1
fi

if [[ $1 =~ ^/[a-z]*$ ]]; then
    echo "Error: should not use root directory or system directory '$1'"
    exit 1
fi

change_case() {
    ret=""
    for ((i=0;i<${#1};i++)); do
        letter=${1:i:1}
        if [[ $letter =~ [A-Z] ]]; then
            letter=${letter,,}
        elif [[ $letter =~ [a-z] ]]; then
            letter=${letter^^}
        fi

        ret=$ret$letter
    done
    echo "$ret"
}

if [ -f $1 ]; then
    target=`change_case $1`
    # echo $target
    mv $1 $target
elif [ -d $1 ]; then
    for file in `ls $1`; do
        if [ -f $1/$file ]; then
            target=`change_case $file`
            mv $1/$file $1/$target
        fi
    done
    target=`change_case $1`
    mv $1 $target
else
    echo "Error: '$1' is not a file or directory"
    exit 1
fi