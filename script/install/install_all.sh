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
        echo -e "\n\033[1m\033[92m$2 successfully installed\033[0m\n\n"
    else
        echo -e "\n\033[1m\033[91m/!\\ Warning: Failed to install $2 !\033[0m\n\n" 1>&2
    fi
}

# Install pacman packages
echo -e "\033[1m\033[96mInstalling Pacman packages...\033[0m\033[93m"
sudo pacman -S --noconfirm brave python3 git vim neovim xclip terminator zsh obs-studio discord nodejs docker docker-compose gestures libinput-gestures gcc clang gcovr pinta krita tree >> /dev/null
check_error $? "Pacman packages"

# Install pip
echo -e "\033[1m\033[96mInstalling pip...\033[0m\033[93m"
python -m ensurepip --upgrade >> /dev/null
ret_code=$?
/usr/bin/python -m pip install --upgrade pip >> /dev/null
ret_code=$((ret_code + $?))
check_error $ret_code "pip"

# Install neovim python support
echo -e "\033[1m\033[96mInstalling neovim python support...\033[0m\033[93m"
python3 -m pip install --user --upgrade pynvim >> /dev/null
check_error $? "neovim python support"

# Install compiledb
echo -e "\033[1m\033[96mInstalling compiledb...\033[0m\033[93m"
pip3 install --no-input compiledb >> /dev/null
check_error $? "compiledb"

# Install paru
echo -e "\033[1m\033[96mInstalling paru...\033[0m\033[93m"
sudo pacman -S --noconfirm --needed base-devel >> /dev/null
ret_code=$?
git clone https://aur.archlinux.org/paru.git $HOME/.paru &> /dev/null
ret_code=$((ret_code + $?))
cd $HOME/.paru >> /dev/null
ret_code=$((ret_code + $?))
makepkg -si &> /dev/null
ret_code=$((ret_code + $?))
check_error $ret_code "paru"

# Install vimplug
echo -e "\033[1m\033[96mInstalling vimplug...\033[0m\033[93m"
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim >> /dev/null
check_error $? "vimplug"

# Install ohmyzsh
echo -e "\033[1m\033[96mInstalling ohmyzsh...\033[0m\033[93m"
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh >> /dev/null
check_error $? "ohmyzsh"

# Install norminette
echo -e "\033[1m\033[96mInstalling Bubulle norminette...\033[0m\033[93m"
curl -fsSL https://raw.githubusercontent.com/aureliancnx/Bubulle-Norminette/master/install_bubulle.sh >> /dev/null
check_error $? "Bubulle norminette"

# Install Microsoft Teams
echo -e "\033[1m\033[96mInstalling Microsoft Teams...\033[0m\033[93m"
paru --skipreview teams <<< "1" >> /dev/null
check_error $? "Microsoft Teams"

# Install Criterion
echo -e "\033[1m\033[96mInstalling criterion...\033[0m\033[93m"
paru --skipreview criterion <<< "1" >> /dev/null
check_error $? "criterion"

# Install Deezer
echo -e "\033[1m\033[96mInstalling Deezer...\033[0m\033[93m"
paru --skipreview deezer <<< "1" >> /dev/null
check_error $? "Deezer"

# Install Better Discord installer
echo -e "\033[1m\033[96mInstalling Better Discord installer...\033[0m\033[93m"
paru --skipreview betterdiscord-installer <<< "1" >> /dev/null
check_error $? "Better Discord installer"

# Cloning Dotfile repo
echo -e "\033[1m\033[96mCloning Dotfile repository...\033[0m\033[93m"
git clone https://github.com/Curs3W4ll/Dotfiles.git /tmp/Dotfiles &> /dev/null
check_error $? "Dotfile repository"
