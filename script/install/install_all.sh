#!/bin/bash

# Check if have sudo privileges without password
sudo -n true &> /dev/null
if [ ! $? -eq 0 ]; then
    echo -e "\033[1m\033[91m/!\\ Fatal: You need the sudo privileges to use the script, add this line to the sudoers file (accessible with 'sudo visudo'): '$USER ALL=(ALL) ALL' or use script with sudo\033[0m" 1>&2
    exit 1
fi

# Install pacman packages
./install_pacman_packages.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install pip
./install_pip.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install neovim python support
./install_neovim_python_support.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install compiledb
./install_compiledb.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install paru
./install_paru.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install vimplug
./install_vimplug.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install ohmyzsh
./install_ohmyzsh.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install norminette
./install_norminette.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install Microsoft Teams
./install_teams.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install Criterion
./install_criterion.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install Deezer
./install_deezer.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Install Better Discord installer
./install_betterdiscord.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi
