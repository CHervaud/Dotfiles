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

set number                                      " Display lines number
set nu rnu                                      " Make lines number display relative

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


source $HOME/.config/nvim/plugs-set/vimplug.vim

source $HOME/.config/nvim/plugs-set/coc.vim

source $HOME/.config/nvim/plugs-set/airline.vim
source $HOME/.config/nvim/plugs-set/arduino.vim
source $HOME/.config/nvim/plugs-set/better_whitespace.vim
source $HOME/.config/nvim/plugs-set/gitmessenger.vim
source $HOME/.config/nvim/plugs-set/mkdp.vim
source $HOME/.config/nvim/plugs-set/nerdtree.vim
source $HOME/.config/nvim/plugs-set/indentline.vim
source $HOME/.config/nvim/plugs-set/rainbow.vim
source $HOME/.config/nvim/plugs-set/vimspector.vim
source $HOME/.config/nvim/plugs-set/nerdcommenter.vim

source $HOME/.config/nvim/keybindings/map.vim
