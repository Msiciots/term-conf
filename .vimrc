call plug#begin()
Plug 'preservim/NERDTree'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
call plug#end()

"au VimEnter *  NERDTree
nmap <F1> :NERDTreeToggle<CR>
syntax on

set nu
set shiftwidth=4
set expandtab
set tabstop=4

colorscheme gruvbox
set background=dark

