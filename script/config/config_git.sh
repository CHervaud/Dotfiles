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
        echo -e "\n\033[1m\033[92m$2 successfully configured\033[0m"
    else
        echo -e "\n\033[1m\033[91m/!\\ Warning: Failed to configure $2 !\033[0m" 1>&2
        exit 1
    fi
}

# Config git
echo -e "\033[1m\033[96mConfiguring git...\033[0m\n"
if [ $1 -eq 1 ] ; then
    git config --global user.name "Corentin Hervaud" >> /dev/null
    ret_code=$?
    git config --global user.email "corentin.hervaud@epitech.eu" /dev/null
    ret_code=$((ret_code + $?))
else
    git config --global user.name "Corentin Hervaud"
    ret_code=$?
    git config --global user.email "corentin.hervaud@epitech.eu"
    ret_code=$((ret_code + $?))
fi
check_error $ret_code "Git"

# Config new ssh key
echo -e "\033[1m\033[96mConfiguring new ssh key...\033[0m\n"
if [ $1 -eq 1 ] ; then
    ssh-keygen -t ed25519 -C "chervaud@hp_manjaro" >> /dev/null
    ret_code=$?
    ssh-add $HOME/.ssh/id_ed25519 >> /dev/null
    ret_code=$((ret_code + $?))
else
    ssh-keygen -t ed25519 -C "chervaud@hp_manjaro"
    ret_code=$?
    ssh-add $HOME/.ssh/id_ed25519
    ret_code=$((ret_code + $?))
fi
check_error $ret_code "new ssh key"
