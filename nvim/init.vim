syntax enable                                   " Enable syntax higllighing

set nofixendofline                              " Disable adding new line and end of oppened files

" Auto-completion
set wildignorecase                              " Make filenames autocompletion case-insensitive
set wildignore+=*.a,*.o,*.gcno,*.gcda           " Exclude tmp fils from autocompletion
set t_Co=256

set autowriteall                                " Autowrite when replace in multiple buffers

set ignorecase                                  " Make search case insensitive

set termguicolors                               " Set colorscheme

set clipboard=unnamedplus                       " Copy and paste between vim and others
set nocp

set nu rnu

" Color theme
set background=dark
colorscheme onedark

" Tab
set ts=4 sw=4
set expandtab

hi CocInfoFloat guifg=#hex-color guibg=#hex-color

let mapleader="," " Set auto tek header plugin

" Trailing space mark
let g:better_whitespace_ctermcolor='Red'
let g:better_whitespace_guicolor='#E06C75'

" Vimspector
let g:vimspector_enable_mappings="HUMAN"

source $HOME/.config/nvim/plugs-set/vimplug.vim

source $HOME/.config/nvim/plugs-set/coc.vim
source $HOME/.config/nvim/plugs-set/airline.vim
source $HOME/.config/nvim/plugs-set/arduino.vim
source $HOME/.config/nvim/plugs-set/gitgutter.vim
source $HOME/.config/nvim/plugs-set/nerdtree.vim
source $HOME/.config/nvim/plugs-set/mkdp.vim

source $HOME/.config/nvim/keybindings/map.vim
