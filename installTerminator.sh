#/bin/bash

NoColor="\033[0m"
CyanColor="\033[0;36m"
RedColor="\033[0;91m"

dotfilesPath="/tmp/CDotfiles"
terminatorPath="$HOME/.config/terminator"

function confirm {
    local _response
    while true; do
        if [ -n "$1" ]; then
            echo -n $1
        else
            echo -n "Are you sure"
        fi
        echo -n " [y/n] ? "
        read -r _response
        case "$_response" in
            [Yy][Ee][Ss]|[Yy]|"")
                return 0
            ;;
            [Nn][Oo]|[Nn])
                return 1
            ;;
            *)
                echo "Invalid input, Please response Yes or No"
            ;;
        esac
    done
}

set +eo pipefail
terminatorBinPath=$( which terminator )
if [ ! $? -eq 0 ]; then
    echo -e "\n${RedColor}Please install terminator first${NoColor}"
    exit 1
else
    echo -e "${CyanColor}Using terminator at $terminatorBinPath${NoColor}"
fi
set -eo pipefail

confirm "Using this script will remove the existing terminator configuration, Continue"

echo -e "${CyanColor}Cloning Dotfiles to ${dotfilesPath}${NoColor}"
rm -rf $dotfilesPath
git clone https://github.com/Curs3W4ll/Dotfiles ${dotfilesPath}

echo -e "${CyanColor}Copying configuration${NoColor}"
cp $dotfilesPath/data/terminator/config $terminatorPath/config

echo -e "${CyanColor}Removing cloned repository${NoColor}"
rm -rf $dotfilesPath

echo -e "${CyanColor}INSTALLATION SUCCESSFULL${NoColor}"
