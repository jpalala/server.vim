let mapleader = ","

" set syntax highlighting
syntax on


" show relative number
set relativenumber

" show line numbers
set number

" will show all whitespaces as a character.
set list

"no compatible
set nocp

"  exit insert mode using 'jj'
inoremap jj <ESC>

" set dark background
set background=dark


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

" On python, spaces/indents are especially important, so we highlight them up!
" show spaces as ·
set listchars+=space:·
" show end of lines as return character 
set listchars+=eol:⏎

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
colorscheme PaperColor
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
nnoremap <Leader>wn :match ExtraWhitespace /^\s* \s*\<Bar>\s\+$/<CR>
nnoremap <Leader>wf :match<CR>

" this works with fzf, set the rtp correctly
"shows all files in the current directory
noremap <leader>f :Files<CR>
"shows all git files in the current directory
noremap <leader>gf :GFiles<CR>
