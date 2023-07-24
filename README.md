# server.vim
base vim config for easy editing on servers

## Use vimplug

Install it by placing this in .vimrc

```vimscript
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
```

## TODO
 - ctrlp ?
 - fugitive
 - nerdtree
