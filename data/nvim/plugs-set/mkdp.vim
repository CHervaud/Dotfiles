" Open the preview window after entering the markdown buffer
let g:mkdp_auto_start = 1

" Auto close current preview window when change
let g:mkdp_auto_close = 1

" Auto refresh when changes are done on the file
let g:mkdp_refresh_slow = 1

" Change preview page title
let g:mkdp_page_title = '「${name}」Vim mkdp'

" Recognized filetypes
let g:mkdp_filetypes = ['markdown', 'md']

" Open/Close Markdown Preview
nmap <C-p> :MarkdownPreviewToggle<CR>
