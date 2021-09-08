# Nerdtree vim plugin documentation

More documentation here: [Nerdtree github](https://github.com/preservim/nerdtree)

## Overview

Nerdtree is a vim plugin that allow to have an arborescence of the current project and naviguate in/modify it

## Installation

In vim plug plugins call

```vim
Plug 'preservim/nerdtree'
```

## Tips and configuration

Map Ctrl + N to show/hide nerdtree in normal mode

```vim
map <C-n> :NERDTreeToggle<CR>
```

Custom arrows

```vim
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
```

Show hidden files

```vim
let NERDTreeShowHidden=1
```

Ignore files and folders

```vim
let NERDTreeIgnore=['\.git$', '\.vscode$', 'compilecommands.json']
```

Open nerdtree automatically when vim starts and put the cursor on nerdtree window

```vim
autocmd VimEnter * NERDTree
```

Open nerdtree automatically when vim starts and put the cursor on the other window

```vim
autocmd VimEnter * NERDTree | wincmd p
```

Open nerdtree when vim as no file argument

```vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
```

Open nerdtree and move the cursor to the file window if a file is specified

```vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
```

Open nerdtree unless a file or session is specified

```vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
```

Open nerdtree only if the argument gived to vim is a directory

```vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
```

Exit vim if nerdtree is the last window

```vim
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
```

Close the tab if nerdtree is the last window

```vim
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
```

There is also nerd tree extensions, like [nerdtree-git](nerdtree-git.md) and [devicons](vim-devicons.md)

## Use

To use this plugin, use the command `:NerdTreeToggle`

Use Ctrl + W + (h j k l) to move of windows

When are on the nerdtree window, you can select a file and press enter to open it

Also press `m` to see which interactions you can do with your environment
