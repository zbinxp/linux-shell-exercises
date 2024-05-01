#! /bin/bash

if [ $# -lt 1 ]; then
    echo "usage: $0 target_name"
    exit 1
fi

cur_dir=$(pwd)
if [[ $cur_dir =~ ^/[a-z]*$ ]]; then
    echo "should not use system folder $cur_dir"
    exit 1
fi
# change to parent folder
cd ..
mv $cur_dir $1