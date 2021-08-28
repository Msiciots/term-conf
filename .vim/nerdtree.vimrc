
""""" NerdTree configure
au VimEnter *  NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWinEnter * NERDTreeMirror
nmap <F1> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<Tab>'
let NERDTreeShowHidden=1
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
set guifont=DroidSansMono\ Nerd\ Font\ 11

 "About nerdtree
 "you can add these colors to your .vimrc to help customizing
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
