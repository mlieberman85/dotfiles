set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'
Plugin 'airblade/vim-gitgutter'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'mattn/gist-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mhinz/vim-signify'
Plugin 'chrisbra/changesPlugin'
Plugin 'majutsushi/tagbar'

call vundle#end()
syntax on
filetype plugin indent on

set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
let s:background='dark'
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1
let g:airline#extensions#virtualenv#enabled=1
let g:airline#extensions#tabline#enabled=1


set background=dark
colorscheme solarized
let g:solarized_termtrans=1
let g:solarized_contrast="high"

set clipboard=unnamed
set wildmenu
set esckeys
set backspace=indent,eol,start
set ttyfast
set gdefault
set encoding=utf-8 nobomb

let mapleader=","

set backupdir=~/.vim/backups
set directory=~/.vim/swaps

if exists("&undodir")
	set undodir=~/.vim/undo)
endif

set backupskip=/tmp/*,/private/tmp/*

set modeline
set modelines=4

set exrc
set secure

set number

set cursorline

set tabstop=4

set hlsearch

set ignorecase

set incsearch

set mouse=a

set noerrorbells

set nostartofline

set ruler

set shortmess=atI

set showmode

set title

set showcmd

if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

set scrolloff=3

function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s+$//e
	call setpos('.', save_cursor)
	call setreg('/'. old_query)
endfunction

if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif
