#! /bin/bash

echo "Select operation:"
echo "1. SSH"
echo "2. SCP"
read -p "Enter your choice: " choice
read -p "Enter username: " username
read -p "Enter IP address: " ip

case $choice in
1)
    ssh $username@$ip
    ;;
2)
    read -p "Enter direction (1. Remote to local, 2. Local to remote): " direction
    read -p "Enter source file location: " source

    read -p "Enter destination location (optional): " dest
    if [[ $direction -eq 1 ]]; then
        dest=${dest:-~} # if dest is null, substitute with '~'
        scp $username@$ip:$source $dest
    else
        dest=${dest:-~/$source} # if dest is null, substitute with '~/$source'
        scp $source $username@$ip:$dest
    fi
    ;;
*)
    echo "Invalid choice."
    ;;
esac