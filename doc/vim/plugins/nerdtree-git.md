# Nerdtree git vim plugin documentation

More documentation here: [Nerdtree git github](https://github.com/Xuyuanp/nerdtree-git-plugin)

## Overview

Nerdtree-git is a vim plugin that expand [Nerdtree plugin](nerdtree.md)

## Installation

In vim plug plugins call

```vim
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
```

Remove the old line with only nerdtree if needed

## Tips and configuration

Configure icons

```vim
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'~',
                \ 'Staged'    :'✭',
                \ 'Untracked' :'✚',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
```

Show if files are ignored (by `.gitignore`)

```vim
let g:NERDTreeGitStatusShowIgnored = 1
```

Indicate every files under an untracked directory

```vim
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
```

Change git executable path

```vim
let g:NERDTreeGitStatusGitBinPath = '/your/file/path'
```

Show clean indicator when file are push as they are

```vim
let g:NERDTreeGitStatusShowClean = 1
```

## Use

To use this plugin, just use nerdtree
