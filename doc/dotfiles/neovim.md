# Neovim configuration

#### What is done by scripts ?

Clone all the files

#### What is not done by scripts ?

Install plugins with vimplug

[Scripts doc](scripts.md)

### Configure basic neovim

First of all, clone this repository if it's not already done, here is an example:

```bash
git clone https://github.com/Curs3W4ll/Dotfiles.git /tmp/Dotfiles
```

Make sure you have installed vimplug correctly ([vimplug github repository](https://github.com/junegunn/vim-plug))

Create the neovim config folder:

```bash
mkdir ~/.config/nvim
```

According to where you have cloned this repository, copy the content of `Dotfiles/data/nvim/*` in `~/.config/nvim/`:

```bash
cp -r /tmp/Dotfiles/data/nvim/* ~/.config/nvim/
```

### Configure color theme

Setup the onedark colorscheme:

```bash
git clone https://github.com/joshdick/onedark.vim.git /tmp/onedark.vim; cp -r /tmp/onedark.vim/colors ~/.config/nvim/colors; cp -r /tmp/onedark.vim/autoload ~/.config/nvim/autoload
```

### Configure icons

Setup a font to get icons (repository clone is really long):

```bash
git clone https://github.com/ryanoasis/nerd-fonts.git /tmp/nerd-fonts; cd /tmp/nerd-fonts; ./install.sh Hack
```

### Install plugins

Launch neovim:

```bash
nvim
```

Type `:PlugInstall` to install all the plugins

And type `:call mkdp#util#install()` to install markdown preview

ReLaunch neovim:

```bash
nvim
```

Type `:CocInstall coc-tabnine coc-git coc-calc coc-yaml coc-sh coc-python coc-pyright coc-markdownlint coc-json coc-clangd`

## Next doc

Now it's time to check [git doc](git.md)
