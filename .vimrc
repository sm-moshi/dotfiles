set nocompatible    " be iMproved, required
filetype off        " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
set runtimepath+=/opt/vim_runtime

source /opt/vim_runtime/vimrcs/basic.vim
source /opt/vim_runtime/vimrcs/filetypes.vim
source /opt/vim_runtime/vimrcs/plugins_config.vim
source /opt/vim_runtime/vimrcs/extended.vim

try
source /opt/vim_runtime/my_configs.vim
catch
endtry

set autoindent
set hlsearch
set number
set cursorline
set spell
set shell=/bin/zsh

let g:snipMate = { 'snippet_version' : 1 }

Plugin 'nvie/vim-flake8'
Plugin 'gentoo/gentoo-syntax'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
  let g:airline_theme='powerlineish'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

