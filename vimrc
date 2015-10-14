set nocompatible " ignore vi compatibility, also required for Vundle
filetype off " required for Vundle

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" Initialize
call vundle#begin()

" Let Vundle manage itself. Required.
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'bling/vim-airline'
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" All plugins must be added here

call vundle#end() " required for Vundle
filetype plugin indent on " required for Vundle

""" General

" Limitations for security reasons
set secure
set modelines=0

" I save all the time, so no backup is needed
set nobackup
set nowritebackup
set noswapfile

set hidden " Allow buffer change without saving

""" Colors

syntax on
set t_Co=16 " needed for Solarized
set background=light
colorscheme solarized

""" Visual

set cursorline

set relativenumber
set number " Makes it a hybrid of relative numbers and absolute for current line

set laststatus=2 " Always show the status line

" Nice command completion above the status line
set wildmenu
set wildmode=list:longest,full

set scrolloff=3 " Number of lines around the cursor while scrolling

""" Editing

set expandtab " Convert <tab> to spaces

" Two spaces per <tab>
set tabstop=2
set shiftwidth=2
set softtabstop=2

set backspace=indent,eol,start " Usual backspace behaviour

""" Search

set hlsearch " Highlight searches
set incsearch " Incremental searching
set ignorecase " Case insensitive...
set smartcase  " ...except if pattern contains upper case

""" Keys

let mapleader=","

" ; is the same as : in NORMAL mode
nmap ; :

" jj behaves as Esc in INSERT mode
imap jj <esc>

" F1 behaves as Esc in many modes
imap <f1> <esc>
nmap <f1> <esc>
vmap <f1> <esc>

" Move by displayed lines
nnoremap j gj
nnoremap k gk

" Easier split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Clear search highlights with ,space
nmap <leader><space> :noh<cr>

