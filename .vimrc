"call plug#begin()
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'svermeulen/vim-easyclip'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
" color themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'wadackel/vim-dogrun'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'crusoexia/vim-monokai'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'trusktr/seti.vim'
Plug 'tomasiser/vim-code-dark'
call plug#end()

set termguicolors

let g:coq_settings = { 'auto_start': v:true }

if has('nvim')
  " use unnamedplus only! or else will double set
  set clipboard=unnamedplus
  if getenv('DISPLAY') == v:null
    exe setenv('DISPLAY', 'FAKE')
  endif
else
  autocmd TextYankPost * call system("c", getreg('"'))
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'



""" replace gm with m (mark), because easyclip make m become original d
nnoremap gm m
set clipboard=unnamed
let g:EasyClipShareYanks=1
let g:EasyClipUseSubstituteDefaults=1

set encoding=UTF-8
set nu
set nornu!
set cursorline
"set nornu!
nnoremap <F2> :set nornu!<CR>
"set nu!
nnoremap <F6> :set nu!<CR>
" Not auto indent when pasting
nnoremap <F3> :set nopaste!<CR>

" replace word use <C-j>
map <C-j> cw<C-r>0<ESC> 
" visual block mode
nnoremap q <c-v>

set shiftwidth=4
set expandtab
set tabstop=4
syntax on
set t_Co=256
set cursorline

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle"
let g:tagbar_width=30
nnoremap <silent> <F5> :TagbarToggle<CR> 

 "Match <tab> to C-n for auto-complete
"function! InsertTabWrapper()
    "let col = col('.') - 1
    "if !col || getline('.')[col - 1] !~ '\k'
        "return "\<tab>"
    "else
        "return "\<c-p>"
    "endif
"endfunction
"inoremap <expr> <tab> InsertTabWrapper()
"inoremap <s-tab> <c-n>

" map tab for coc.nvim autocomple
"let b:coc_suggest_disable = 1    "Disable autocomple 
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" set mouse scroll 
nnoremap <F4> :call ToggleMouse() <CR>
function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=
    else
        " enable mouse everywhere
        set mouse=a
    endif
endfunc


function Rand()
    return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
endfunction

function RandomColorThemes()
    let themes = ["gruvbox", "jellybeans", "dracula","palenight","monokai","onehalfdark","devbox-dark-256","seti","abstract","codedark", 'abstract', 'afterglow', 'alduin', 'anderson', 'angr', 'apprentice', 'archery', 'atom', 'ayu', 'challenger_deep', 'deep-space', 'deus', 'dogrun', 'focuspoint', 'gotham', 'gotham256', 'happy_hacking', 'hybrid', 'hybrid_material', 'hybrid_reverse', 'iceberg', 'jellybeans', 'lucius', 'materialbox', 'meta5', 'minimalist', 'molokai', 'molokayo', 'mountaineer-grey', 'mountaineer', 'nord', 'oceanic_material', 'OceanicNext', 'one-dark', 'one', 'onedark', 'onehalfdark', 'orbital', 'PaperColor', 'paramount', 'pink-moon', 'purify', 'rdark-terminal2', 'scheakur',  'seoul256', 'sierra', 'snow', 'solarized8', 'solarized8_flat', 'solarized8_high', 'solarized8_low', 'sonokai', 'space-vim-dark', 'spacecamp', 'spacecamp_lite', 'stellarized', 'tender', 'termschool', '', 'twilight256', 'two-firewatch', 'wombat256mod']

    let r = Rand()%len(themes)
    execute "colorscheme ".themes[r] 
    echom "Current colorschemes:".themes[r]
    "execute "colorscheme dracula" 
endfunction

call RandomColorThemes()

"function RandomColorScheme()
  "let mycolors = split(globpath(&rtp,"**/colors/*.vim"),"\n") 
  "exe 'so ' . mycolors[localtime() % len(mycolors)]
  "unlet mycolors
"endfunction

""call RandomColorScheme()
"nnoremap <F5> :call RandomColorScheme() <CR>


set background=dark
syntax on
syntax enable


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

"source ~/.vim/coc.vimrc
source ~/.vim/nerdtree.vimrc
