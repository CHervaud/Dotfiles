" Auto launch nerdtree when a directory is specified
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" When open a directory, start tree automatically
map <C-n> :NERDTreeToggle<CR>

" Ignore files
let NERDTreeIgnore=['\.pyc$', '\.o$', '\.a$', '\.gcno$', '\.gcda$', 'compile_commands.json$']

" Setup icons
set encoding=UTF-8

highlight Directory ctermfg=cyan
