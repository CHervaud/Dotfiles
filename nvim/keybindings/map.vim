inoremap <silent> malloc; malloc(sizeof());<Esc>hhi
inoremap free; free();<Esc>hi
inoremap while  while ()<Esc>i
inoremap for  for ()<Esc>i
inoremap debg  printf("After \n");<Esc>hhhhi
inoremap #i< #include <.h><Esc>hhi
inoremap #i" #include "my.h"<Esc>hhi
inoremap my my_
inoremap [i [i]
inoremap [y [y]
inoremap [j [j]
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

nnoremap main :call <SID>put_main()<cr>
function! s:put_main()
    let text = ["int main(int ac, const char **av)",
                \"{",
                \"    return 0;",
                \"}"]
    call append(1, text)
endfunction
