set nocompatible " ignore vi compatibility, also required for Vundle
filetype off " required for Vundle

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" Initialize
call vundle#begin()

" Let Vundle manage itself. Required.
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

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

""" Colors

syntax on
set t_Co=16 " needed for Solarized
set background=light
colorscheme solarized

""" Visual

set cursorline

set relativenumber
set number " Makes it a hybrid of relative numbers and absolute for current line

""" Editing

set expandtab " Convert <tab> to spaces

" Two spaces per <tab>
set tabstop=2
set shiftwidth=2
set softtabstop=2

""" Keys

let mapleader=","

