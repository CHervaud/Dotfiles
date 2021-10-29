# Instant nvim plugin documentation

More documentation here: [instant.nvim github](https://github.com/jbyuki/instant.nvim)

## Overview

Instant.nvim is a plugin that allow you to collaborate on a project

That mean that you can edit a file, but with your collaborators (It's like liveshare coding)

## Installation

In vim plug plugins call

```vim
Plug 'jbyuki/instant.nvim'
```

## Tips and configuration

Commands list, so you can map them like this

```vim
:nmap <leader>gf <Plug>(InstantStartServer)
```

|Command              |Effect                                            |
|---------------------|--------------------------------------------------|
|`InstantStartServer` |Start a live share server                         |
|`InstantStopServer`  |Stop a live share server                          |
|`InstantStop`        |Stop the client                                   |
|`InstantStartSingle` |Start a session with a single file                |
|`InstantJoinSingle`  |Join a session with a single file                 |
|`InstantStartSession`|Start a session with all the openned buffers      |
|`InstantJoinSession` |Join a session with multiples buffers             |
|`InstantStatus`      |Display connections                               |
|`InstantFollow`      |Follow what does a specific user                  |
|`InstantStopFollow`  |Stop following a user                             |
|`InstantOpenAll`     |Open all files of the current directory in buffers|
|`InstantSaveAll`     |Save all openned buffers                          |
|`InstantMark`        |Mark a region                                     |
|`InstantMarkClear`   |Clear a marked region                             |

Recommended mappings

```vim
" Start server
:nmap <leader>isrv :InstantStartServer<CR>
" Start session
:nmap <leader>ises :InstantStartSession 217.0.0.1 8080<CR>
" Mark region
:nmap <leader>im :InstantMark<CR>
" Clear marks
:nmap <leader>icm :InstantMarkClear<CR>
```

Set username

```vim
let g:instant_username = "USERNAME"
```

Change The name text highlight color of users

```vim
hi Instant1 ctermfg=97 guibg=#875FAF
hi Instant2 ctermfg=73 guibg=#5FAFAF
hi Instant3 ctermfg=193 guibg=#D7FFAF
hi Instant4 ctermfg=205 guibg=#FF5FAF
let g:instant_name_hl_group_default="Instant1"
let g:instant_name_hl_group_user1="Instant1"
let g:instant_name_hl_group_user2="Instant2"
let g:instant_name_hl_group_user3="Instant3"
let g:instant_name_hl_group_user4="Instant4"
```

Change the cursor text highlight color of users

```vim
hi Instant1 ctermfg=97 guibg=#875FAF
hi Instant2 ctermfg=73 guibg=#5FAFAF
hi Instant3 ctermfg=193 guibg=#D7FFAF
hi Instant4 ctermfg=205 guibg=#FF5FAF
let g:instant_cursor_hl_group_default="Instant1"
let g:instant_cursor_hl_group_user1="Instant1"
let g:instant_cursor_hl_group_user2="Instant2"
let g:instant_cursor_hl_group_user3="Instant3"
let g:instant_cursor_hl_group_user4="Instant4"
```

## Use

Start a server

```vim
:InstantStartServer
```

Start a session

```vim
:InstantStartSession 127.0.0.1 8080
```

Go on a terminal and use this command

```bash
ngrok http 8080
```

On another computer join the session with the ngrok id

```vim
:InstantJoinSession e122-163-5-3-34.ngrok.io
```

List buffers

```vim
:ls
```

Choose buffer to go (here the second)

```vim
:b 2
```

Enjoy !
