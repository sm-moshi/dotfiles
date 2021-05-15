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

Plugin 'altercation/vim-colors-solarized'
    syntax enable
    set background=dark
    colorscheme solarized
Plugin 'nvie/vim-flake8'
Plugin 'gentoo/gentoo-syntax'

