#! /bin/bash

if [ $# -lt 1 ]; then
    echo "usage: $0 <prefix>"
    exit 1
fi

prefix=$1
work_dir=$(pwd)
# for each file in work_dir, rename it to prefix+name
for file in "$work_dir"/*; do
    base=$(basename "$file")
    # The -- is used to signify the end of options and 
    # the start of positional parameters. This is useful when filenames 
    # start with a -, which could be interpreted as an option.
    mv -- "$file" "$work_dir/$prefix$base"
done