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

# Cloning Dotfile repo
echo -e "\033[1m\033[96mCloning Dotfile repository...\033[0m\n"
if [ $1 -eq 1 ] ; then
    git clone https://github.com/Curs3W4ll/Dotfiles.git /tmp/Dotfiles &> /dev/null
else
    git clone https://github.com/Curs3W4ll/Dotfiles.git /tmp/Dotfiles
fi

# Hiding icons from desktop
echo -e "\033[1m\033[96mHiding icons from desktop...\033[0m\n"
if [ $1 -eq 1 ] ; then
    xfconf-query -c xfce4-desktop -p /desktop-icons/style -s 0 > /dev/null
else
    xfconf-query -c xfce4-desktop -p /desktop-icons/style -s 0
fi

# Copying background images
echo -e "\033[1m\033[96mCopying background images...\033[0m\n"
if [ $1 -eq 1 ] ; then
    cp -r /tmp/Dotfiles/data/system/background_images ~/Pictures > /dev/null
else
    cp -r /tmp/Dotfiles/data/system/background_images ~/Pictures
fi
check_error $? "Copying background images"

# Setting background image
echo -e "\033[1m\033[96mSetting background image...\033[0m\n"
if [ $1 -eq 1 ] ; then
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace1/last-image -s ~/Pictures/background_images/Lightning_background2.png > /dev/null
else
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP-1/workspace1/last-image -s ~/Pictures/background_images/Lightning_background2.png
fi
check_error $? "Setting background image"

# Setting background image for second screen is their is
echo -e "\033[1m\033[96mSetting background image...\033[0m\n"
if [ $1 -eq 1 ] ; then
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorDP-2/workspace1/last-image -s ~/Pictures/background_images/Lightning_background2.png > /dev/null
else
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorDP-2/workspace1/last-image -s ~/Pictures/background_images/Lightning_background2.png
fi

# Setting background image for third screen is their is
echo -e "\033[1m\033[96mSetting background image...\033[0m\n"
if [ $1 -eq 1 ] ; then
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorDP-3/workspace1/last-image -s ~/Pictures/background_images/Lightning_background2.png > /dev/null
else
    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorDP-3/workspace1/last-image -s ~/Pictures/background_images/Lightning_background2.png
fi
