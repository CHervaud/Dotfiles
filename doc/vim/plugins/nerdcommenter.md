# Nerdcommenter vim plugin documentation

More documentation here: [NerdCommenter github](https://github.com/preservim/nerdcommenter)

## Overview

NerdCommenter is a simple plugin that simplify commenting

## Installation

In vim plug plugins call

```vim
Plug 'preservim/nerdcommenter'
```

## Tips and configuration

Create default mappings or not

```vim
let g:NERDCreateDefaultMappings = 1
```

Add spaces after comments delemiters

```vim
let g:NERDSpaceDelims = 1
```

Use compact syntax

```vim
let g:NERDCompactSexyComs = 1
```

Define default align method

```vim
let g:NERDDefaultAlign = 'left'
```

Use specific delimiters

```vim
let g:NERDAltDelims_java = 1
```

Add custom delemiters format

```vim
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
```

Allow to comment empty lines

```vim
let g:NERDCommentEmptyLines = 1
```

Delete whitespaces when uncommenting

```vim
let g:NERDTrimTrailingWhitespace = 1
```

Check if lines are commented

```vim
let g:NERDToggleCheckAllLines = 1
```

## Use

To use this plugin, here are main mappings

|Map               |Effect                                                |
|------------------|------------------------------------------------------|
|`<leader>cc`      |Comment the current line or visual mode selected lines|
|`<leader>c<space>`|Toggle comment                                        |
|`<leader>c$`      |Comment from cursor to end of line                    |
|`<leader>cA`      |Append a new comment at the end of the line           |
|`<leader>cu`      |Uncomment                                             |
