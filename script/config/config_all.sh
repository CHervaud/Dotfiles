#!/bin/bash

# Check if have sudo privileges without password
sudo -n true &> /dev/null
if [ ! $? -eq 0 ]; then
    echo -e "\033[1m\033[91m/!\\ Fatal: You need the sudo privileges to use the script, add this line to the sudoers file (accessible with 'sudo visudo'): '$USER ALL=(ALL) ALL' or use script with sudo\033[0m" 1>&2
    exit 1
fi

# Config terminator
./config_terminator.sh
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config zshrc
./config_zshrc.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config zsh-autosuggestions zsh plugin
./config_zsh-autosuggestions.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config zsh-syntax-highlighting zsh plugin
./config_zsh-syntax-highlighting.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config k zsh plugin
./config_k.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config basic neovim
./config_basic_neovim.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config onedark neovim colorscheme
./config_onedark_neovim.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config Hack font devicons
./config_Hack_font.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config git
./config_git.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config docker
./config_docker.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config Gestures
./config_gestures.sh 1
ret_code=$?
if [ $ret_code -ne 0 ] ; then
    exit $ret_code
fi

# Config system date sync
./config_datesync.sh 1
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
