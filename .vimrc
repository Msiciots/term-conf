call plug#begin()
Plug 'preservim/NERDTree'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

"au VimEnter *  NERDTree
nmap <F1> :NERDTreeToggle<CR>

set nu
nnoremap <F2> :set nornu!<CR>

" replace word use <C-j>
map <C-j> cw<C-r>0<ESC> 

set shiftwidth=4
set expandtab
set tabstop=4

"colorscheme gruvbox
"set background=dark
colorscheme jellybeans

autocmd FileType c call Cdefault()
fu! Cdefault()
    if line("$") == 1
        call append(0, "#include <stdio.h>")
        call append(1, "")
        call append(2, "int main(int argc, char *argv[]) {")
        call append(4, "    return 0;")
        call append(5, "}")
    endif
endfu
