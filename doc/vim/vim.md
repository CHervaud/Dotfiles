# Hi there !

#### You're new to vim ? No problem ! I will help you

So to start, you can type `vimtutor` in your terminal to help you with the basics of vim.

If you don't have vim already, just install it with your distribution packages manager.

Some examples:

Arch-based linux:

```bash
pacman -S vim
```

Ubuntu like linux:

```bash
apt-get install vim
```

Redhat linux:

```bash
dnf install vim
```

Then type `vimtutor` in a terminal

##### Once you have all vim bascis in head, we can speak of what vim really is :O

Vim is a really powerfull IDE ! but not from scratch...

You need to pimp your vim according to ur needs to make it powerfull.

Basic vim, without your configuration, is a bit shitty, but let's pimp it together !

## Introduction to neovim

There is plenty of vim distribution such as `vi`, `vim`, `vis`, `nvim`, `nvi`, `pyvim`.

You can see on your own which do you prefer to use but most common are `vi` (a bit old), `vim` and `nvim`.

Personally I use `nvim` (neovim) which is a more maintenable and stable version of `vim`.

So, if you use this as a secondary text editor, it's not really usefull to pimp your vim, cause your just on it 10 minutes by months to fix something on a server for example, for this use, basic vim is enough.

But, if you often use vim or use it as a main IDE, you will need to upgrade it a bit.

---

### Start pimping your vim

So to start, take a look at the vim script documentation (https://devhints.io/vimscript) to globally understand how it works.

###### Basics of the basics, the config directory

For vim the directory will be: `~/.vim/`.

For nvim this will be: `~/config/nvim/`.

---
The main config (without any plugins), will be placed in a file:

`~/.vimrc` for vim and `~/.config/nvim/init.vim` for nvim.

Either on vim or nvim, this file is the main config file that vim will call every times it start. This file is write in vim script and this is where you will do your basic vim config.

#### Now that you know this, here is some example configuration lines:

|Keyword/Command          |Values                                                   |Effect                                           |                                Example|
|-------------------------|:--------------------------------------------------------|-------------------------------------------------|--------------------------------------:|
|`syntax`                 |`enable` / `disable`                                     |Enable or disable colors                         |                        `syntax enable`|
|`wildignorecase`         |                                                         |Make filenames autocompletion case-insensitive   |                   `set wildignorecase`|
|`wildignore`             |Can add with `+=`                                        |Ignore files from filenames autocompletion       |`set wildignore+=*.a,*.o,*.gcno,*.gcda`|
|`t_Co`                   |Bit colors                                               |Set your terminal bit colors                     |                         `set t_Co=256`|
|`autowriteall`           |                                                         |Save files automatically when you quit vim (`:q`)|                     `set autowriteall`|
|`ignorecase`             |                                                         |Make search case-insensitive                     |                       `set ignorecase`|
|`termguicolors`          |                                                         |Use vim colors instead of terminal colors        |                    `set termguicolors`|
|`guitfont`               |Fonts                                                    |Set the font used by vim                         |             `set guifont=Hack-regular`|
|`clipboard`              |`unnamedplus`                                            |Use the clipboard of your system                 |            `set clipboard=unnamedplus`|
|`nocp`                   |                                                         |Disable vim insystem copy                        |                             `set nocp`|
|`number`<br/>`nu`        |                                                         |Display lines number                             |              `set number`<br/>`set nu`|
|`number rnu`<br/>`nu rnu`|                                                         |Display lines number relatively                  |      `set number rnu`<br/>`set nu rnu`|
|`colorscheme`            |Theme                                                    |Set the color theme                              |                  `colorscheme onedark`|
|`ts sw`                  |Number                                                   |Number of space of a tab                         |                        `set ts=4 sw=4`|
|`expandtab`              |                                                         |Make tab write the correct number of space       |                        `set expandtab`|
|`foldmethod`             |manual<br/>indent<br/>syntax<br/>expr<br/>marker<br/>diff|Define the method to use folding                 |                `set foldmethod=indent`|
|`foldnestmax`            |Number                                                   |Folds limit number                               |                   `set foldnestmax=10`|
|`nofoldenable`           |                                                         |Open all folds                                   |                     `set nofoldenable`|
|`foldlevel`              |Number                                                   |Fold level                                       |                      `set foldlevel=2`|
|`undofile`               |                                                         |Add the support of an undo directory             |                         `set undofile`|
|`undodir`                |Path                                                     |Specify an undo directory                        |             `set undodir=/tmp/undodir`|

There is a so many configuration for vim, just search what you want on internet, you will find it

---
### Use plugins

The configuration file is cool, you can do some thing, but their is muuuuch better, PLUGINS !

Plugins are made by the community, some developpers that write a code in vim script that do something

There is an infinity of vim plugins, mostly on github, just search what you want, maybe it exist

Here are some plugins I use:

- [coc](https://github.com/neoclide/coc.nvim)
- [vim-tek-header](https://github.com/Nero-F/vim-tek-header)
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [onedark](https://github.com/joshdick/onedark.vim)
- [vim-surround](https://github.com/tpope/vim-surround)
- [vim-smoothie](https://github.com/psliwka/vim-smoothie)
- [tagalong](https://github.com/AndrewRadev/tagalong.vim)
- [vimdiscord](https://github.com/vbe0201/vimdiscord)
- [git-messenger](https://github.com/rhysd/git-messenger.vim)
- [nerdtree](https://github.com/preservim/nerdtree)
- [nerdtree-git](https://github.com/Xuyuanp/nerdtree-git-plugin)
- [vim-arduino](https://github.com/stevearc/vim-arduino)
- [indentline](https://github.com/yggdroot/indentline)
- [vimspector](https://github.com/puremourning/vimspector)
- [vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [vim-jsx-pretty](https://github.com/maxmellon/vim-jsx-pretty)
- [vim-rainbow](https://github.com/frazrepo/vim-rainbow)
- [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-css-color](https://github.com/ap/vim-css-color)
- [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
- [NerdCommenter](https://github.com/preservim/nerdcommenter)
- [vim cmake](https://github.com/cdelledonne/vim-cmake)
- [instant](https://github.com/jbyuki/instant.nvim)

I've made some documentation on this plugins [here](plugins_doc.md)

#### Plugins installation

Most of the time, you can follow what they say in the github

But you can also use plugins managers

Plugins manager are vim plugins, but they are not modifying your vim, they just help you to install plugins easily

There is a lot of plugins manager, here are some: [vim-plug](https://github.com/junegunn/vim-plug), [pathogen](https://github.com/tpope/vim-pathogen), [vundle](https://github.com/VundleVim/Vundle.vim), [dein](https://github.com/Shougo/dein.vim)

Vim plug is the most used, but they all works approximately the same

#### Plugins configuration

Most of the time, plugins work right after their installation, but you also need to configure them

Configuration of plugins are often documented on their github page, but here are some concepts

##### Set variables

One big concept of vim (like all others languages) is variables

There is two ways to create/set variables

You can use `set` which is mostly used by basic vim

And `let` which is used in most plugins

You will often find documentation on this variables to create/set on the plugins websites

##### Leader

Leader is a big part of keybindings in vim and is used a lot with plugins

The notion of 'leader' is like a prefix in vim

It allow you to configure a key/button to execute commands like shortcuts

In vim you can 'map' a combination of keys to a command and plugins use commands to interact with the user

So, you can map a combination of keys to tell a plugin to do something

The syntax to map a combination of keys to a command

```vim
:(map, nmap, inoremap...) (keys combination) (command)
```

Example:

```vim
inoremap kj <Esc>
```

This say to vim that, when you press the keys `k` then `j` in insert mode('i'), to act like if you pressed the escape key

```vim
:nmap dd :wq
```

This one say to vim to type `:wq` command when you press the key `d` two times in normal mode

This is how to do your own mapping

But, map keys like that is not recommended because, a lot of vim command already use these keys

That's why the leader exist

Like I already say, the leader is like a prefix in vim, a prefix to your map

In the previous example with `dd` and `:wq`, `dd` is already used by basic vim to delete a whole line, so your map is not gonna work

What you can do to avoid this problem, is to you use leader

Leader allow you to use whatever keys combination without conflicting with basic vim

What really does leader is just add a key before your shortcut

So to use leader in a mapping, here is the syntax

```vim
:nmap <leader>dd :wq
```

Now what you have to do to use your mapping is to type this keys combination: `leader` + `d` + `d`

But leader is not defined by default :), you need to define it, here is how (personnaly I use the `,` key as leader)

```vim
let mapleader="<leader>"
mine:
let mapleader=","
```

Just write this somewhere in your configuration

#### Organize your configuration

If their is one last thing I can say you is to organize your vim configuration, don't put all in the same file, split in multiple files

Personnaly, I write vim basic configuration in the basic vim configuration file and I include from here other configurations (mainly plugins configuration or keybindings)

Here how to do an include

```vim
source <path>
```

My configuration architecture look like this:

[ .config/nvim/ ]

- init.vim

  [ keybindings/ ]
  - map.vim

  [ plugs-set/ ]
  - coc.vim
  - nerdtree.vim
  - ...

So in my basic config file (init.vim) I have

```vim
# My config

source $HOME/.config/nvim/keybindings/map.vim
source $HOME/.config/nvim/plugs-set/coc.vim
source $HOME/.config/nvim/plugs-set/nerdtree.vim
```
