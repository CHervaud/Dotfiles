# Markdown preview vim plugin documentation

More documentation here: [Markdown preview github](https://github.com/iamcco/markdown-preview.nvim)

## Overview

Markdown preview is a plugin that make an ontime preview for markdown files

## Installation

In vim plug plugins call

```vim
Plug 'iamcco/markdown-preview.nvim'
```

Install plugins

```vim
:PlugInstall
```

Finish markdown preview installation

```vim
:call mkdp#util#install()
```

## Tips and configuration

Commands list, so you can map them like this

```vim
nmap <C-p> :MarkdownPreviewToggle<CR>
```

|Command                |Effect                   |
|-----------------------|-------------------------|
|`MarkdownPreview`      |Open new preview window  |
|`MarkdownPreviewStop`  |Close preview window     |
|`MarkdownPreviewToggle`|Open/Close preview window|

Open the preview window after entering a markdown buffer

```vim
let g:mkdp_auto_start = 1
```

Close the preview window after quiting a markdown buffer

```vim
let g:mkdp_auto_close = 1
```

Auto refresh preview window

```vim
let g:mkdp_refresh_slow = 1
```

Enable using the markdown command in all files

```vim
let g:mkdp_command_for_global = 0
```

Expose the preview window in internet

```vim
let g:mkdp_open_to_the_world = 0
```

Use a custom ip to open preview window

```vim
let g:mkdp_open_ip = ''
```

Use a custom browser to open preview window (default is your default browser)

```vim
let g:mkdp_browser = ''
```

Display preview page oppenned in command line when opening a preview window

```vim
let g:mkdp_echo_preview_url = 0
```

Use a custom port (default is random)

```vim
let g:mkdp_port = ''
```

Use a custom name

```vim
let g:mkdp_page_title = '「${name}」'
```

List of filetypes which mkdp will reconized

```vim
let g:mkdp_filetypes = ['markdown', 'md']
```

## Use

To use this plugin, simply edit/create a markdown file and use your mappings
