# My terminal configuration
## Tool list
- Vim 8 and above
    - `sudo apt install vim`
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
- C-j Replace with word
- q : Into visual block mode
#### NerdTree
- tab : Open file in new tab.
- i : Open file with herizontal split.
- s : Open file with vertical split.
#### Reference
- [list of flazz/vim-colorschemes](https://github.com/flazz/vim-colorschemes/tree/master/colors)
