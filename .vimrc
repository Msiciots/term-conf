call plug#begin()
Plug 'preservim/NERDTree'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'connorholyday/vim-snazzy'
Plug 'wadackel/vim-dogrun'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'octol/vim-cpp-enhanced-highlight'
call plug#end()

"au VimEnter *  NERDTree
nmap <F1> :NERDTreeToggle<CR>

set nu
nnoremap <F2> :set nornu!<CR>
" Not auto indent when pasting
nnoremap <F3> :set nopaste!<CR>

" replace word use <C-j>
map <C-j> cw<C-r>0<ESC> 

set shiftwidth=4
set expandtab
set tabstop=4
"colorscheme gruvbox
"set background=dark
"colorscheme jellybeans
colorscheme dracula
"colorscheme snazzy
"colorscheme dogrun
"syntax on
"syntax enable

syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }







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
