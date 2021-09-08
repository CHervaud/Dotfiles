# Airline vim plugin documentation

More documentation here: [airline github](https://github.com/vim-airline/vim-airline)

## Overview

Airline is a vim plugin that display some informations on the current openned file

## Installation

In vim plug plugins call

```vim
Plug 'vim-airline/vim-airline'
```

## Tips and configuration

Set airline theme (personnaly use [`onedark` theme](onedark.md)):

```vim
let g:airline_theme='onedark'
```

Global configuration

```vim
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_right_sep = ''
let g:airline_left_sep = ''
```

## Use

To use this plugin, simply launch vim
