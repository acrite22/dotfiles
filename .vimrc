set nocompatible

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set number
set encoding=utf-8
set mouse=a

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'elixir-editors/vim-elixir'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-test/vim-test'

call vundle#end()            " required
filetype plugin indent on    " required

map <C-s> :w<CR>
