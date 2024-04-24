#! /bin/bash

#  Write a script to print the following system information

# Sys Info Menu:
# 1.Currently logged users
# 2.Your shell directory
# 3.Home directory
# 4.OS name & version
# 5.Current working directory
# 6.Number of users logged in
# 7.Show all available shells in your system
# 8.Hard disk information
# 9.CPU information
# 10.Memory information
# 11.File system information
# 12.Currently running process
# 13.Exit

# Requirements:

# Provide a menu for user about what information he wants to check
# Using switch case display output for selected option.
# After the system info is display, ask user whether to continue

while true; do
    echo "Sys Info Menu:"
    echo "1.Currently logged users"
    echo "2.Your shell directory"
    echo "3.Home directory"
    echo "4.OS name & version"
    echo "5.Current working directory"
    echo "6.Number of users logged in"
    echo "7.Show all available shells in your system"
    echo "8.Hard disk information"
    echo "9.CPU information"
    echo "10.Memory information"
    echo "11.File system information"
    echo "12.Currently running process"
    echo "13.Exit"
    read -p "Select an option:" option

    case $option in
        1)
            who
            ;;
        2)
            echo $SHELL
            ;;
        3)
            echo $HOME
            ;;
        4)
            cat /etc/os-release
            ;;
        5)
            pwd
            ;;
        6)
            who | wc -l
            ;;
        7)
            cat /etc/shells
            ;;
        8)
            df -h
            ;;
        9)
            lscpu
            ;;
        10)
            free -h
            ;;
        11)
            df -T
            ;;
        12)
            ps aux
            ;;
        13)
            break
            ;;
        *)
            echo "Error: invalid option"
            ;;
    esac

    read -p "Do you want to continue? (y/n):" choice
    if [ $choice != "y" ]; then
        break
    fi
done