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

# Enable system sync date
echo -e "\033[1m\033[96mEnable system date sync...\033[0m\n"
if [ $1 -eq 1 ] ; then
    timedatectl set_ntp true >> /dev/null
else
    timedatectl set_ntp true
fi
check_error $? "System time sync"

# Restarting systemd timesync
echo -e "\033[1m\033[96mRestarting systemd timesync service...\033[0m\n"
if [ $1 -eq 1 ] ; then
    systemctl restart systemd-timesyncd >> /dev/null
else
    systemctl restart systemd-timesyncd
fi
check_error $? "Restart systemd timesync"
