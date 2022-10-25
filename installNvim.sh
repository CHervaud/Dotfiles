#/bin/bash

NoColor="\033[0m"
CyanColor="\033[0;36m"
RedColor="\033[0;91m"

dotfilesPath="/tmp/CDotfiles"
nvimPath="$HOME/.config/nvim"

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

confirm "Using this script will remove the existing neovim configuration, Continue"

set +eo pipefail
nvimBinPath=$( which nvim )
if [ ! $? -eq 0 ]; then
    echo -e "\n${RedColor}Please install neovim first${NoColor}"
    exit 1
else
    echo -e "${CyanColor}Using nvim at $nvimBinPath${NoColor}"
fi
set -eo pipefail

echo -e "${CyanColor}Cloning Dotfiles to ${dotfilesPath}${NoColor}"
rm -rf $dotfilesPath
git clone https://github.com/Curs3W4ll/Dotfiles ${dotfilesPath}

echo -e "${CyanColor}Installing vim-plug for neovim${NoColor}"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo -e "${CyanColor}Copying plugins list${NoColor}"
cp $dotfilesPath/data/nvim/plugs-set/vimplug.vim $nvimPath/init.vim

echo -e "${CyanColor}Installing plugins${NoColor}"
nvim -c PlugInstall -c qa

echo -e "${CyanColor}Copying full config${NoColor}"
rm -rf $nvimPath
mkdir $nvimPath
cp $dotfilesPath/data/nvim/* $nvimPath -r
ls $dotfilesPath/data/nvim
ls $nvimPath
cp $dotfilesPath/data/coc/ultisnips/* $HOME/coc/ -r

echo -e "${CyanColor}Installing last plugins and coc${NoColor}"
nvim -c PlugInstall -c PlugUpdate -c CocInstall -c qa

echo -e "${CyanColor}Removing cloned repository${NoColor}"
rm -rf $dotfilesPath

echo -e "${CyanColor}INSTALLATION SUCCESSFULL${NoColor}"
