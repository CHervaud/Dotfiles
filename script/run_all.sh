#!/bin/bash

# Check if have sudo privileges without password
sudo -n true &> /dev/null
if [ ! $? -eq 0 ]; then
    echo -e "\033[1m\033[91m/!\\ Fatal: You need the sudo privileges to use the script, add this line to the sudoers file (accessible with 'sudo visudo'): '$USER ALL=(ALL) ALL' or use script with sudo\033[0m" 1>&2
    exit 1
fi

# Install all
./install/install_all.sh
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config all
./config/config_all.sh
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

echo -e "\033[92mInstallation complete ! \033[1mDon't forget to remove the line you added in 'sudo visudo' if you did\033[0m"
echo -e "\n\033[95mYou now need to configure:"
echo -e "  - system settings (see system.md)"
echo -e "  - brave (see brave.md)"
echo -e "  - neovim plugins: (launch nvim, then type ':PlugInstall')"
echo -e "  - git (see git.md)"
echo -e "  - gestures (see gestures.md)"
echo -e "  - discord (see discord.md)"
echo -e "And reboot !\033[0m"
