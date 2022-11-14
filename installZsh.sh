#!/bin/bash

NoColor="\033[0m"
CyanColor="\033[0;36m"
RedColor="\033[0;91m"

dotfilesPath="/tmp/CDotfiles"
destPath="$HOME"

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
batBinPath=$( which bat )
if [ ! $? -eq 0 ]; then
    echo -e "\n${RedColor}Please install bat first${NoColor}"
    exit 1
else
    echo -e "${CyanColor}Using bat at $batBinPath${NoColor}"
fi
if [[ ! -d $HOME/.ohmyzsh ]]; then
    echo -e "${RedColor}Please install oh my zsh first (run: sh -c \\\"$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\\\")${NoColor}"
    exit 1
else
    echo -e "${CyanColor}Using ohmyzsh at ${ZSH}${NoColor}"
fi
set -eo pipefail

confirm "Using this script will remove the existing zsh configuration ('.zshrc' file), Continue"

echo -e "${CyanColor}Cloning Dotfiles to ${dotfilesPath}${NoColor}"
rm -rf $dotfilesPath
git clone https://github.com/Curs3W4ll/Dotfiles ${dotfilesPath}

echo -e "${CyanColor}Copying zsh configuration${NoColor}"
rm -rf $destPath/.zshrc
cp $dotfilesPath/data/zsh/zshrc $destPath/.zshrc

echo -e "${CyanColor}Installing k zsh plugin${NoColor}"
git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k

echo -e "${CyanColor}Installing zsh-autosuggestions plugin${NoColor}"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo -e "${CyanColor}Installing zsh-syntax-highlighting plugin${NoColor}"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo -e "${CyanColor}Installing PowerLevel10k theme${NoColor}"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo -e "${CyanColor}Removing cloned repository${NoColor}"
rm -rf $dotfilesPath

echo -e "${CyanColor}INSTALLATION SUCCESSFULL${NoColor}"
echo -e "${CyanColor}Please restart your shell to configure the new one${NoColor}"
