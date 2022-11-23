set nocompatible

set noerrorbells
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set number
set encoding=utf-8
set mouse=a

filetype off                  " required

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

" muscle memory save
map <C-s> :w<CR>

" vs code
if exists('g:vscode')
 " VSCode extension
else
 " ordinary neovim
endif

" ctrl p
let g:ctrlp_custom_ignore = {
 	\ 'dir':  '(\.git|deps|_build|node_modules|cover|coverage)$',
 	\ }
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob "" --glob "!.git/"'
  let g:ctrlp_use_caching = 0
else
  let g:ctrlp_clear_cache_on_exit = 0
endif

"NERDTree window
let g:ctrlp_dont_split = 'NERD'
nmap <Leader>kb :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" panel navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" vim test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

