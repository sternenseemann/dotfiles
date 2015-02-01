" sternenseemanns vimrc

"plug.vim
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'chriskempson/base16-vim'
Plug 'godlygeek/csapprox'
Plug 'scrooloose/syntastic'
Plug 'epeli/slimux'
Plug 'tpope/vim-sleuth'
Plug 'kien/ctrlp.vim'
Plug 'Shougo/vimproc', {'do' : 'make' }
Plug 'raichoo/haskell-vim', {'for' : 'haskell'}
Plug 'eagletmt/ghcmod-vim', {'for' : 'haskell'}
call plug#end()

" completion
set completeopt=menu,preview

" keybindings
let mapleader = ","
"toggle line numbers
nmap <Leader>n :setlocal number!<CR>
"toggle paste mode
nmap <Leader>p :set paste!<CR>
" fuzzy finding
nmap <Leader><Leader> :CtrlP ~<CR>
nmap <Leader>c :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>
"natural navigating
nmap j gj
nmap k gk

" buffer management
nmap <Leader>l :bnext<CR>
nmap <Leader>h :bprev<CR>
nmap <Leader>d :bdelete<CR>

" window movement
" tmux/screen like behavior
map <C-a> <C-w>

" syntax
syntax on
filetyp on
filetype indent plugin on

"Color
set background=dark
colorscheme base16-chalk

" nice defaults
set autoindent
set backspace=indent,eol,start
set smarttab

" search
set incsearch
set ignorecase
set smartcase

" encoding
set encoding=utf-8

" reload files
set autoread

" Indentation
set breakindent
"set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

nmap <Leader>s :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap <Leader>t :set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4<CR

" completion
" use C-n!!

" plugin configuration
source ~/.vim/plugins
