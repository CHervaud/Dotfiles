syntax enable                                   " Enable syntax higllighing

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

" NERDtree config
map <C-n> :NERDTreeToggle<CR>
" When open a directory, start tree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

source $HOME/.config/nvim/plugs-set/vimplug.vim
source $HOME/.config/nvim/plugs-set/vundle.vim

source $HOME/.config/nvim/plugs-set/coc.vim
source $HOME/.config/nvim/plugs-set/airline.vim
source $HOME/.config/nvim/plugs-set/arduino.vim

source $HOME/.config/nvim/keybindings/map.vim
