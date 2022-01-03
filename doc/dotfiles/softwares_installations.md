# Softwares installations

#### What is done by scripts ?

All of this section

[Scipts doc](scripts.md)

### Here's the list of all the softwares to install

- brave
- python3, pip
- git
- vim, neovim, vimplug
- xclip
- paru
- terminator
- zsh, ohmyzsh
- obs
- discord, betterdiscord, teams
- deezer
- node
- docker, docker-compose
- gestures, libinput-gestures
- gcc, clangd, compiledb
- criterion, gcovr
- norminette
- pinta, krita
- tree

### And how to install it

#### Pacman installations

Start upgrading pacman to the last version

```bash
sudo pacman -Syu
```

- brave-browser
- python3
- git
- vim, neovim
- xclip
- terminator
- zsh
- obs
- discord
- node
- docker, docker-compose
- gestures
- libinput-gestures
- gcc, clangd
- gcovr
- pinta, krita
- tree

With this command:

```bash
sudo pacman -S brave-browser python3 git vim neovim xclip terminator zsh obs-studio discord nodejs docker docker-compose gestures libinput-gestures gcc clang gcovr pinta krita tree
```

#### Pip installations

- compiledb
- neovim python support

Install pip:

```bash
python -m ensurepip --upgrade; /usr/bin/python -m pip install --upgrade pip
```

Then install pip packages:

```bash
pip3 install compiledb pynvim
```

#### Github installations

- paru
- vimplug
- ohmyzsh
- norminette

See github repositories for install informations:

- [paru github repository](https://github.com/Morganamilo/paru)
- [vimplug github repository](https://github.com/junegunn/vim-plug)
- [ohmyzsh github repository](https://github.com/ohmyzsh/ohmyzsh)
- [bubulle norminette github repository](https://github.com/aureliancnx/Bubulle-Norminette)

#### Paru installations

- teams
- criterion
- deezer
- betterdiscord
- ngork

With this commands:

```bash
paru teams; paru criterion; paru deezer; paru betterdiscord; paru ngork
```

## Next doc

Now it's time to check terminator doc [here](terminator.md)
