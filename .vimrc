syntax on
syntax enable
set nocompatible    " be iMproved, required
filetype off        " required

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set autoindent
set hlsearch
set number
set cursorline
set spell
set shell=/bin/zsh

let g:snipMate = { 'snippet_version' : 1 }

call plug#begin('~/.vim/plugged')

" Plugins go here
Plug 'nvie/vim-flake8'
Plug 'gentoo/gentoo-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='powerlineish'

call plug#end()
