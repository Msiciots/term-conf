"call plug#begin()
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' | 
            \ Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'svermeulen/vim-easyclip'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'nvie/vim-flake8'
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'
"Plug 'zivyangll/git-blame.vim'
Plug 'wenlongche/SrcExpl'
"Plug 'lervag/vimtex'
"Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
"Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
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

source ~/.vim/coc.vimrc

"if has('nvim')
  "" use unnamedplus only! or else will double set
  "set clipboard=unnamedplus
  "if getenv('DISPLAY') == v:null
    "exe setenv('DISPLAY', 'FAKE')
  "endif
"else
  "autocmd TextYankPost * call system("c", getreg('"'))
"endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'



""" replace gm with m (mark), because easyclip make m become original d
nnoremap gm m
set clipboard=unnamed
"let g:EasyClipShareYanks=1
let g:EasyClipUseSubstituteDefaults=1

set encoding=UTF-8
set nu
set nornu!
set cursorline

source ~/.vim/nerdtree.vimrc
map <F1> <plug>NERDTreeTabsToggle<CR>
"set nornu!
nnoremap <F2> :set nornu!<CR>
" Not auto indent when pasting
nnoremap <F3> :set nopaste!<CR>

nnoremap <F4> :call ToggleMouse() <CR>

nnoremap <silent> <F5> :TagbarToggle<CR> 

"set nu!
nnoremap <F6> :set nu!<CR>
nnoremap <F9> :BlamerToggle<CR>
let g:blamer_delay = 100
"nnoremap <F9> :<C-u>call gitblame#echo()<CR>

" replace word use <C-j>
map <C-j> cw<C-r>0<ESC> 
" visual block mode
nnoremap q <c-v>

set smartindent
set shiftwidth=4
set expandtab
set tabstop=4
syntax on
set t_Co=256
set cursorline
set ic " ignore upper lower case in search

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle"
let g:tagbar_width=30

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
"inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
"inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" set mouse scroll 
set mouse=a
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
    let themes = ["gruvbox", "jellybeans", "dracula","palenight","monokai","onehalfdark","devbox-dark-256","seti","abstract","codedark", 'abstract', 'afterglow', 'alduin', 'anderson', 'angr', 'apprentice', 'archery', 'atom', 'ayu', 'challenger_deep', 'deep-space', 'deus', 'dogrun', 'focuspoint', 'gotham', 'gotham256', 'happy_hacking', 'hybrid', 'hybrid_material', 'hybrid_reverse', 'iceberg', 'jellybeans', 'lucius', 'materialbox', 'meta5', 'minimalist', 'molokai', 'molokayo', 'mountaineer-grey', 'mountaineer', 'nord', 'oceanic_material', 'OceanicNext', 'one-dark', 'one', 'onedark', 'onehalfdark', 'orbital', 'PaperColor', 'pink-moon', 'purify', 'rdark-terminal2', 'scheakur',  'seoul256', 'sierra', 'snow', 'solarized8', 'solarized8_flat', 'solarized8_high', 'sonokai', 'space-vim-dark', 'spacecamp', 'spacecamp_lite', 'stellarized', 'tender', 'termschool', '', 'twilight256', 'two-firewatch', 'wombat256mod']

    let r = Rand()%len(themes)
    execute "colorscheme ".themes[r] 
    "echom "Current colorschemes:".themes[r]
    "execute "colorscheme github" 
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

autocmd BufNewFile *.cpp 0r ~/.vim/template/skeleton.cpp
autocmd BufNewFile *.c 0r ~/.vim/template/skeleton.c
"autocmd FileType c call Cdefault()
"fu! Cdefault()
    "if line("$") == 1
        "call append(0, "#include <stdio.h>")
        "call append(1, "")
        "call append(2, "int main(int argc, char *argv[]) {")
        "call append(4, "    return 0;")
        "call append(5, "}")
    "endif
"endfu

"source ~/.vim/coc.vimrc
"let g:coq_settings = { 'auto_start': v:true }
"let g:nerdtree_tabs_open_on_console_startup=1


""" for latex
"let g:tex_flavor = 'latex'
"let g:vimtex_quickfix_mode = 0

" Cscope
"
set cscopetag
set csto=0

if filereadable("cscope.out")
   cs add cscope.out   
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
set cscopeverbose

nmap fs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap fg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap fc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap ft :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap fe :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap fi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap fd :cs find d <C-R>=expand("<cword>")<CR><CR>

" SrcExpl Settings
" // The switch of the Source Explorer 
nmap <F8> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what plugins except
" // itself are using buffers. And you need add their buffer names into below list
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]

" // The color schemes used by Source Explorer. There are five color schemes
" // supported for now - Red, Cyan, Green, Yellow and Magenta. Source Explorer
" // will pick up one of them randomly when initialization.
let g:SrcExpl_colorSchemeList = [
        \ "Red",
        \ "Cyan",
        \ "Green",
        \ "Yellow",
        \ "Magenta"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Workaround for Vim bug @https://goo.gl/TLPK4K as any plugins using autocmd for
" // BufReadPre might have conflicts with Source Explorer. e.g. YCM, Syntastic etc.
let g:SrcExpl_nestedAutoCmd = 1

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" // Set "<F3>" key for displaying the previous definition in the jump list 
"let g:SrcExpl_prevDefKey = "<F3>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
"let g:SrcExpl_nextDefKey = "<F4>"
