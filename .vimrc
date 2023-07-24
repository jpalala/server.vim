let mapleader = ","

 set number
set relativenumber
"no compatible
set nocp
" show spaces as ·
set listchars+=space:·

syntax on 
" Install VimPlug with 
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
  
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'NLKNguyen/papercolor-theme'
Plug 'justinmk/vim-sneak'

call plug#end()

" this is the path to fzf on mac, 
" but on other change to the output value of `which fzf`
set rtp+=/opt/homebrew/opt/fzf

nnoremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
nnoremap <Leader>wf :match<CR>

" this works with fzf, set the rtp correctly
"shows all files in the current directory
noremap <leader>f :Files<CR>
"shows all git files in the current directory
noremap <leader>gf :GFiles<CR>

