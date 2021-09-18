# My terminal configuration
## Tool list
- Vim 8 and above
    - `sudo apt install vim`
- Neovim
    - `sudo apt install neovim`
    - `mkdir -p ~/.config/nvim`, `ln -s ~/.vimrc ~/.config/nvim/init.vim`
- tmux
    - `sudo apt install tmux`
- ranger
    - `pip install ranger-fm`
- `curl --upload-file ./hello.txt https://transfer.sh/hello.txt`
## Configuration

```
git clone https://github.com/Msiciots/term-conf
./term-conf/setup.sh
```
Open vim and execute this command to install plugins.
```
:PlugInstall
```
Custom welcome messages.
```
cp ./term-conf/01-custom /etc/update-motd.d/01-custom
```
## Shortcut key
### Vim
- F1 : NERDTreeToggle
- F2 : Toggle of relative line number 
- F3 : set nopaste (paste without auto indenting)
- F4 : Toggle of mouse=a
- F5 : Toggle of tagbar
- F6 : Toggle of line number
- C-j Replace with word
- q : Into visual block mode
#### NerdTree
- tab : Open file in new tab.
- i : Open file with herizontal split.
- s : Open file with vertical split.
#### coc.nvim
- Depend on [nodejs](https://nodejs.org/)
- Lists
    - `:CocInstall coc-pyright`
    - `:CocInstall coc-html`
- [coc-ccls](https://github.com/Maxattax97/coc-ccls)
    - `sudo snap install ccls --classic`
### tagbar
- Depend on [ctags](https://github.com/universal-ctags/ctags)
    - `sudo apt install ctags`
#### Reference
- [list of flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes/tree/master/colors)
- [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [vim-easyclip](https://github.com/svermeulen/vim-easyclip)
- https://tmuxcheatsheet.com/
