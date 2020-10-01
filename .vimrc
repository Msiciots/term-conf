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
set shiftwidth=4
set expandtab
set tabstop=4

"colorscheme gruvbox
"set background=dark
colorscheme jellybeans
