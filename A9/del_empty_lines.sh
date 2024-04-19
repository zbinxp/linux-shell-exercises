#! /bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1
if [ ! -f "$filename" ]; then
    echo "file $filename not found"
    exit 1
fi

# regex:^ *$ match an empty line
# /d delete the matched line
sed -i "/^ *$/d" "$filename"

echo "Empty lines removed"