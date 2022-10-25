" Setup leader
let mapleader=","

" Movements
inoremap jk <Esc>
inoremap kj <Esc>
inoremap JK <Esc>
inoremap KJ <Esc>
inoremap jK <Esc>
inoremap Jk <Esc>
inoremap Kj <Esc>
inoremap kJ <Esc>

" Window changements
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Ctrl+S saving
nmap <C-s> :x<CR>
imap <C-s> <Esc>:x<CR>

" Visual replace
vnoremap <C-r> "hy:%s/<C-r>h/<C-r>h/g<left><left>

source $HOME/.config/nvim/keybindings/arduino.vim
source $HOME/.config/nvim/keybindings/gitgutter.vim
source $HOME/.config/nvim/keybindings/mkdp.vim
source $HOME/.config/nvim/keybindings/nerdtree.vim
source $HOME/.config/nvim/keybindings/cmake.vim
source $HOME/.config/nvim/keybindings/coc.vim
source $HOME/.config/nvim/keybindings/grammarous.vim
