"
" Align Neovim configs
"
set nowrap

" Indenting
set noexpandtab
set shiftwidth=2
set smartindent
set tabstop=2
set softtabstop=2

" Number
set number
set relativenumber
set numberwidth=2

" Split windows
set splitright
set splitbelow

" Performance
set noswapfile
set autoread

" Line width
set textwidth=80
set colorcolumn=80

"
" Other Vim configs
"

" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Leader
let mapleader = " "

set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line
set modelines=0   " Disable modelines as a security precaution
set nomodeline

set hlsearch      " Highlight searches
set ignorecase    " Ignore case of searches
set incsearch     " do incremental searching
set mouse=a       " Enable mouse in all modes
set noerrorbells  " Disable error bells
set showmode      " Show the current mode
set title         " Show the filename in the window titlebar

set scrolloff=3   " Start scrolling three lines before the horizontal window border

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Highlight current line
set cursorline

filetype on

" split word on _, no split word on -
verbose set iskeyword-=_
verbose set iskeyword+=-
