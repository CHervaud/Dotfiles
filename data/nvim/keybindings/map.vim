" Setup leader
let mapleader=","


" Global

inoremap #i< #include <.h><Esc>hhi
inoremap #i" #include "my.h"<Esc>hhi
inoremap inti int i = 0;
inoremap inty int y = 0;
inoremap intj int j = 0;
inoremap jk <Esc>
inoremap kj <Esc>
inoremap JK <Esc>
inoremap KJ <Esc>
inoremap jK <Esc>
inoremap Jk <Esc>
inoremap Kj <Esc>
inoremap kJ <Esc>
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nmap <C-s> :x<CR>
imap <C-s> <Esc>:x<CR>


" Arduino

" Compile ino code
nnoremap <leader>am :ArduinoVerify<CR>
" Upload binary to arduino
nnoremap <leader>au :ArduinoUpload<CR>G
" Open console
nnoremap <leader>as :ArduinoSerial<CR>
" Upload binary to arduino and open console
nnoremap <leader>ad :ArduinoUploadAndSerial<CR>


" Git gutter

" Show preview popup
:nmap <leader>gp :GitGutterPreviewHunk<CR>
" HighLight modified lines
:nmap <leader>gh :GitGutterLineHighlightsToggle<CR>
" Reduce unchanging lines
:nmap <leader>gf :GitGutterFold<CR>
" Go to next change
:nmap <leader>gn :GitGutterNextHunk<CR>
" Go to previous change
:nmap <leader>gN :GitGutterPrevHunk<CR>


" Markdown preview

" Toggle Markdown Preview
nmap <C-p> :MarkdownPreviewToggle<CR>


" NERDTree

" Toggle NERDTree tab
map <C-n> :NERDTreeToggle<CR>


" Cmake

" Generate
nmap <leader>cg :CMakeGenerate<CR>
" Build
nmap <leader>cb :CMakeBuild<CR>
" Install
nmap <leader>ci :CMakeInstall<CR>
" Clean
nmap <leader>cc :CMakeClean<CR>
" Open window
nmap <leader>co :CmakeOpen<CR>
" Close window
nmap <leader>cq :CMakeClose<CR>


" CoC

" Use `<leader>n` and `<leader>N` to navigate errors/warnings
nmap <silent> <leader>n <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>N <Plug>(coc-diagnostic-next)

" Code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
