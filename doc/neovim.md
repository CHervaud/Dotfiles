# Neovim configuration

#### What is done by scripts ?
All of this section

[Scripts doc](scripts.md)

### Configure basic neovim

First of all, clone this repository if it's not already done, here is an example:
```
git clone https://github.com/Curs3W4ll/Dotfiles.git /tmp/Dotfiles
```

Make sure you have installed vimplug correctly ([vimplug github repository](https://github.com/junegunn/vim-plug))

Create the neovim config folder:
```
mkdir ~/.config/nvim
```

According to where you have cloned this repository, copy the content of `Dotfiles/data/nvim/*` in `~/.config/nvim/`:
```
cp -r /tmp/Dotfiles/data/nvim/* ~/.config/nvim/
```

### Configure color theme

Setup the onedark colorscheme:
```
git clone https://github.com/joshdick/onedark.vim.git /tmp/onedark.vim; cp -r /tmp/onedark.vim/colors ~/.config/nvim/colors; cp -r /tmp/onedark.vim/autoload ~/.config/nvim/autoload
```

### Configure icons

Setup a font to get icons (repository clone is really long):
```
git clone https://github.com/ryanoasis/nerd-fonts.git /tmp/nerd-fonts; cd /tmp/nerd-fonts; ./install.sh Hack
```

### Install plugins

Launch neovim:
```
nvim
```
Type `:PlugInstall` to install all the plugins

And type `:call mkdp#util#install()` to install markdown preview

## Next doc

Now it's time to check [git doc](git.md)
