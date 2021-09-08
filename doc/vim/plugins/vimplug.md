# Vimplug plugin documentation

More documentation here: [vimplug github](https://github.com/junegunn/vim-plug)

## Overview

Vimplug is a vim plugin that that allow you to easily manage your vim plugins

This do the installation, the updation and the removing with simpe command

## Installation

Vim

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Neovim

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Use

To use this plugin, use this format to add plugins:

```vim
call plug#begin()

" Plugins here
Plug 'neoclide/coc.nvim'
Plug 'jiangmiao/auto-pairs'

call plug#end()
```

And just replace the content of '' by the URL of your vim plugin repository

Then exit and restart vim, and here are some commands you can use:

|Command       |Effect                                                |
|--------------|------------------------------------------------------|
|`:PlugInstall`|Install all the plugins that are not already installed|
|`:PlugUpdate` |Updates all the plugins that need it                  |
|`:PlugUpgrade`|Update vimplug if needed                              |
|`:PlugClean`  |Remove plugins that are not anymore in the list       |
