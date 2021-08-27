#!/bin/bash

# Check if have sudo privileges without password
sudo -n true &> /dev/null
if [ ! $? -eq 0 ]; then
    echo -e "\033[1m\033[91m/!\\ Fatal: You need the sudo privileges to use the script, add this line to the sudoers file (accessible with 'sudo visudo'): '$USER ALL=(ALL) ALL' or use script with sudo\033[0m" 1>&2
    exit 1
fi

function check_error {
    echo -e "\033[0m"
    if [ -z $1 ] || [ -z "$2" ]; then
        exit 1
    fi
    if [ $1 -eq 0 ]; then
        echo -e "\n\033[1m\033[92m$2 successfully installed\033[0m"
    else
        echo -e "\n\033[1m\033[91m/!\\ Warning: Failed to install $2 !\033[0m" 1>&2
        exit 1
    fi
}

# Install pip
echo -e "\033[1m\033[96mInstalling pip...\033[0m\n"
python -m ensurepip --upgrade
ret_code=$?
/usr/bin/python -m pip install --upgrade pip
ret_code=$((ret_code + $?))
check_error $ret_code "pip"
