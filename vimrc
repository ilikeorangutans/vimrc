set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start

syntax on
set number
set ruler
set hidden
set hlsearch
set ignorecase
set smartcase
set incsearch
set wildmenu

set autoindent
set nostartofline
set laststatus=2
set confirm
set mouse=a
set cmdheight=3
set pastetoggle=<F11>

set shiftwidth=4
set tabstop=4
set grepprg=ag\ --nogroup\ --nocolor
set backup
set backupdir=~/tmp
set directory=~/tmp
set cursorline
set relativenumber
set history=10000

let mapleader=","

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"colorscheme hybrid
colorscheme corporation

set shell=/bin/bash

nmap <c-s> <esc>:w<CR>
