call plug#begin()
"Plug 'preservim/NERDTree'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'octol/vim-cpp-enhanced-highlight'
" color themes
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'connorholyday/vim-snazzy'
Plug 'wadackel/vim-dogrun'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'crusoexia/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'trusktr/seti.vim'
Plug 'tomasiser/vim-code-dark'

call plug#end()


au VimEnter *  NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWinEnter * NERDTreeMirror
nmap <F1> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<Tab>'
let NERDTreeShowHidden=1
set encoding=UTF-8
let g:airline_powerline_fonts = 1
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'
let g:NERDTreeGitStatusShowClean = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_unite = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
"let g:NERDTreeExactMatchHighlightFullName = 0
"let g:NERDTreePatternMatchHighlightFullName = 0
let g:NERDTreeGitStatusConcealBrackets = 1
"set guifont=DroidSansMono\ Nerd\ Font\ 11

set nu
set nornu!
set cursorline
"set nornu!
nnoremap <F2> :set nornu!<CR>
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


"colorscheme gruvbox
"set background=dark
"colorscheme jellybeans
"colorscheme dracula
"colorscheme snazzy
"colorscheme palenight 
"colorscheme monokai
"colorscheme onehalfdark
"syntax on
"syntax enable
colorscheme devbox-dark-256
"colorscheme seti 
"colorscheme abstract
"colorscheme codedark
let g:airline_theme = 'codedark'



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

" About nerdtree
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['py'] = s:green " sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['md'] = s:aqua " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:darkOrange " sets the color for .gitignore files
