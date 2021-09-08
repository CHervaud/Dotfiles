# Vim rainbow plugin documentation

More documentation here: [Vim rainbow github](https://github.com/frazrepo/vim-rainbow)

## Overview

Vim rainbow is a plugin that help you to see arborescence in `(`, `[` and `{` and all their content

## Installation

In vim plug plugins call

```vim
Plug 'frazrepo/vim-rainbow'
```

## Tips and configuration

Load the plugin only on specific files type

```vim
au FileType c,cpp,objc,objcpp call rainbow#load()
```

Always load the plugin

```vim
let g:rainbow_active = 1
```

Config gui colors (colors avaible on the github at `vim73/rgb.txt`)

```vim
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
```

Config terminal colors (colors avaible on the github at `vim73/rgb.txt`

```vim
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
```

Config scheme according to filetypes

```vim
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
```

Add this line under html one if you want to ignore nerdtree window

```vim
    \ [ 'nerdtree' , [] ],
```

## Use

To use this plugin use vim, it's just colors :)
