# Gitgutter vim plugin documentation

More documentation here: [Gitgutter github](https://github.com/airblade/vim-gitgutter)

## Overview

Gitgutter is a vim plugin that add a git support to vim

You can see the differences between your project and the lastest version on the remote

This plugin also allow to fold the code that is not different from latest version

It also allow to have previews

## Installation

In vim plug plugins call

```vim
Plug 'airblade/vim-gitgutter'
```

## Tips and configuration

Commands list, so you can map them like this

```vim
:nmap <leader>gf <Plug>(GitGutterFold)
```

|Command                           |Effect                               |
|----------------------------------|-------------------------------------|
|`GitGutterEnable`                 |Turn on gitgutter                    |
|`GitGutterDisable`                |Turn off gitgutter                   |
|`GitGutterToggle`                 |Switch gitgutter state               |
|`GitGutterSignsEnable`            |Turn on signs(`+`, `-` and `~`)      |
|`GitGutterSignsDisable`           |Turn off signs(`+`, `-` and `~`)     |
|`GitGutterSignsToggle`            |Switch signs(`+`, `-` and `~`) state |
|`GitGutterHighlightsEnable`       |Turn on changed lines highlight      |
|`GitGutterHighlightsDisable`      |Turn off changed lines highlight     |
|`GitGutterHighlightsToggle`       |Switch changed lines highlight state |
|`GitGutterLineNrHighlightsEnable` |Turn on line number hishlight        |
|`GitGutterLineNrHighlightsDisable`|Turn off line number hishlight       |
|`GitGutterLineNrHighlightsToggle` |Switch line number hishlight state   |
|`GitGutterNextHunk`               |Show next commit                     |
|`GitGutterPrevHunk`               |Show previous commit                 |
|`GitGutterFold`                   |Fold/Unfold lines that has no changes|
|`GitGutterPreviewHunk`            |Preview the changes at the cursor    |

Recommended mappings

```vim
" Show preview popup
:nmap <leader>gp :GitGutterPreviewHunk<CR>
" HighLight modified lines
:nmap <leader>gh :GitGutterLineHighlightsToggle<CR>
" Reduce unchanging lines
:nmap <leader>gf :GitGutterFold<CR>
" Go to next change
:nmap <leader>gn :GitGutterNextHunk<CR>
" Go to previous change
:nmap <leader>gN :GitGutterPrevHunk<CR>
```

Disable default key mapping

```vim
let g:gitgutter_map_keys = 0
```

Hide commit number

```vim
let g:gitgutter_show_msg_on_hunk_jumping = 0
```

## Use

Use your mappings

You can use the mapping `<leader>hs` to add to the next commit the part of code the cursor is on

Same thing for undo the changes on the part of code where the cursor is with `<leader>hu`
