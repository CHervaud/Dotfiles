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

function check_error_config {
    if [ -z $1 ] || [ -z "$2" ]; then
        exit 1
    fi
    if [ $1 -eq 0 ]; then
        echo -e "\n\033[1m\033[92m$2 successfully configured\033[0m\n\n"
    else
        echo -e "\n\033[1m\033[91m/!\\ Warning: Failed to configure $2 !\033[0m\n\n" 1>&2
    fi
}

# Install pacman packages
echo -e "\033[1m\033[96mInstalling Pacman packages...\033[0m\033[93m"
sudo pacman -S --noconfirm brave python3 git vim neovim xclip terminator zsh obs-studio discord nodejs docker docker-compose gestures libinput-gestures gcc clang gcovr pinta krita >> /dev/null
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

# Config terminator
echo -e "\033[1m\033[96mConfiguring terminator...\033[0m\033[93m"
mkdir $HOME/.config/terminator -p >> /dev/null
ret_code=$?
cp /tmp/Dotfiles/data/terminator/config $HOME/.config/terminator/config >> /dev/null
ret_code=$((ret_code + $?))
check_error_config $ret_code "terminator"

# Config zshrc
echo -e "\033[1m\033[96mConfiguring zshrc...\033[0m\033[93m"
cp /tmp/Dotfiles/data/zsh/zshrc $HOME/.zshrc
check_error_config $? "zshrc"

# Config zsh-autosuggestions zsh plugin
echo -e "\033[1m\033[96mConfiguring zsh-autosuggestions zsh plugin...\033[0m\033[93m"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &> /dev/null
check_error_config $? "zsh-autosuggestions plugin"

# Config zsh-syntax-highlighting zsh plugin
echo -e "\033[1m\033[96mConfiguring zsh-syntax-highlighting zsh plugin...\033[0m\033[93m"
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &> /dev/null
check_error_config $? "zsh-syntax-highlighting plugin"

# Config k zsh plugin
echo -e "\033[1m\033[96mConfiguring k zsh plugin...\033[0m\033[93m"
git clone https://github.com/supercrabtree/k ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/k &> /dev/null
check_error_config $? "k zsh plugin"

# Config basic neovim
echo -e "\033[1m\033[96mConfiguring basic neovim...\033[0m\033[93m"
mkdir $HOME/.config/nvim -p >> /dev/null
ret_code=$?
cp /tmp/Dotfiles/data/nvim/* -r $HOME/.config/nvim/ >> /dev/null
ret_code=$((ret_code + $?))
check_error_config $ret_code "basic neovim"

# Config onedark neovim colorscheme
echo -e "\033[1m\033[96mConfiguring Onedark neovim colorscheme...\033[0m\033[93m"
git clone https://github.com/joshdick/onedark.vim /tmp/onedark.vim &> /dev/null
ret_code=$?
cp /tmp/onedark.vim/colors -r $HOME/.config/nvim/colors >> /dev/null
ret_code=$((ret_code + $?))
cp /tmp/onedark.vim/autoload -r $HOME/.config/nvim/autoload >> /dev/null
ret_code=$((ret_code + $?))
check_error_config $ret_code "Onedark neovim colorscheme"

# Config Hack font devicons
echo -e "\033[1m\033[96mConfiguring Hack font for devicons...\033[0m\033[93m"
git clone https://github.com/ryanoasis/nerd-fonts.git /tmp/nerd-fonts &> /dev/null
ret_code=$?
/tmp/nerd-fonts/./install.sh Hack
ret_code=$((ret_code + $?))
check_error_config $ret_code "Hack font for devicons"

# Config docker
echo -e "\033[1m\033[96mConfiguring Docker...\033[0m\033[93m"
sudo groupadd docker >> /dev/null
ret_code=$?
sudo usermod -aG docker $USER >> /dev/null
ret_code=$((ret_code + $?))
newgrp docker >> /dev/null
ret_code=$((ret_code + $))
check_error_config $ret_code "Docker"

# Config Gestures
echo -e "\033[1m\033[96mConfiguring Gestures...\033[0m\033[93m"
sudo gpasswd -a $USER input >> /dev/null
ret_code=$?
libinput-gestures-setup service >> /dev/null
ret_code=$((ret_code + $?))
libinput-gestures-setup autostart >> /dev/null
ret_code=$((ret_code + $?))
check_error_config $ret_code "Gestures"

echo -e "\033[92mInstallation complete ! \033[1mDon't forget to remove the line you added in 'sudo visudo' if you did\033[0m"
echo -e "\n\033[95mYou now need to configure:"
echo -e "  - system settings (see system.md)"
echo -e "  - brave (see brave.md)"
echo -e "  - neovim plugins: (launch nvim, then type ':PlugInstall')"
echo -e "  - git (see git.md)"
echo -e "  - gestures (see gestures.md)"
echo -e "  - discord (see discord.md)"
echo -e "And reboot !\033[0m"
