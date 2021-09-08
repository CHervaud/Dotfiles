# Git messenger vim plugin documentation

More documentation here: [Git messenger github](https://github.com/rhysd/git-messenger.vim)

## Overview

Git messenger is a plugin that allow to see git commit history on a part of a file

## Installation

In vim plug plugins call

```vim
Plug 'rhysd/git-messenger.vim'
```

## Tips and configuration

Show `git diff` of the last commit (the current commit you are seeing)

```vim
let g:git_messenger_include_diff="current"
```

Like in the above example, you can set a lot of variables to make it yours

Here is a list of some variables

|Variable                                  |Value(s)                      |Default value|Effect                                                                                        |
|------------------------------------------|:----------------------------:|:-----------:|----------------------------------------------------------------------------------------------|
|`g:git_messenger_close_on_cursor_moved`   |`true`<br/>`false`            |`true`       |Close the popup when you move the cursor                                                      |
|`g:git_messenger_include_diff`            |`none`<br/>`current`<br/>`all`|`none`       |Include a `git diff` to the popup                                                             |
|`g:git_messenger_git_command`             |Any                           |`git`        |The git command to execute                                                                    |
|`g:git_messenger_no_default_mappings`     |`true`<br/>`false`            |`false`      |Ignore defaults mappings                                                                      |
|`g:git_messenger_into_popup_after_show`   |`true`<br/>`false`            |`true`       |Define if the cursor is inside the popup or not after executing the command two times in a row|
|`g:git_messenger_always_into_popup`       |`true`<br/>`false`            |`false`      |Define if the cursor is inside the popup or not after executing only one time the command     |
|`g:git_messenger_extra_blame_args`        |Any                           |None         |Content used for the git blame command (use it to add options)                                |
|`g:git_messenger_preview_mods`            |Any                           |None         |Set a specific preview mode                                                                   |
|`g:git_messenger_max_popup_height`        |Number                        |`null`       |Maximum lines of the popup window(null = unlimited)                                           |
|`g:git_messenger_max_popup_width`         |Number                        |`null`       |Maximum columns of the popup window(null = unlimited)                                         |
|`g:git_messenger_date_format`             |String format                 |`%c`         |Format of the dates used in the popup                                                         |
|`g:git_messenger_conceal_word_diff_marker`|`true`<br/>`false`            |`true`       |Define if display or not `+` and `-` signs for code parts                                     |
|`g:git_messenger_floating_win_opts`       |Any                           |None         |Options passed when opening the preview window                                                |
|`g:git_messenger_popup_content_margins`   |`true`<br/>`false`            |`true`       |Add or not margin to the popup window                                                         |

## Use

To use this plugin, use the keymap `<leader>gm`

Or custom it with

```vim
nmap your_mapping <Plug>(git-messenger)
```
