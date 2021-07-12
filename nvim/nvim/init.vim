syntax enable                                   " Enable syntax higllighing

" Auto-completion
set wildignorecase                              " Make filenames autocompletion case-insensitive
set wildignore+=*.a,*.o,*.gcno,*.gcda           " Exclude tmp fils from autocompletion
set t_Co=256

" disable end of file new line
:set nofixendofline

set autowriteall                                " Autowrite when replace in multiple buffers

set ignorecase                                  " Make search case insensitive

set termguicolors                               " Set colorscheme
set guifont=Hack-regular

set clipboard=unnamedplus                       " Copy and paste between vim and others
set nocp

set nu rnu

" Color theme
colorscheme onedark

" Tab
set ts=4 sw=4
set expandtab

" Fold with 'zc' and 'zo'
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

hi CocInfoFloat guifg=#hex-color guibg=#hex-color

" Setup colored brackets
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['MediumVioletRed', 'Magenta2', 'Yellow2', 'PaleTurquoise1']

let mapleader="," " Set auto tek header plugin

" Trailing space mark
let g:better_whitespace_ctermcolor='Red'
let g:better_whitespace_guicolor='#E06C75'

" Vimspector
let g:vimspector_enable_mappings="HUMAN"

autocmd StdinReadPre * let s:std_in=1

source $HOME/.config/nvim/plugs-set/vimplug.vim
source $HOME/.config/nvim/plugs-set/vundle.vim

source $HOME/.config/nvim/plugs-set/coc.vim
source $HOME/.config/nvim/plugs-set/airline.vim
source $HOME/.config/nvim/plugs-set/arduino.vim
source $HOME/.config/nvim/plugs-set/nerdtree.vim

source $HOME/.config/nvim/keybindings/map.vim
