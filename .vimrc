" File: .vimrc
" Author: Georgiy Mostolovitsa (gfranco)
" Description: 
" Last Modified: 02.04.2011


" Common
set nocompatible
set autoread

set backup
set backupdir=/tmp
set directory=/tmp


" Editor
set nowrap
set undolevels=100
set backspace=indent,eol,start whichwrap+=<,>,[,]

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

set ignorecase
set hlsearch
set incsearch
set showmatch
set smartcase

set autoindent
set smartindent

set pastetoggle=<C-v>

set nofoldenable


" UI
set number
set foldcolumn=0
set showtabline=0

set laststatus=2
set statusline=%t%M%R\ %P

set scrolljump=7

set novisualbell        " выключаем бибиканье и мигание
set t_vb=   


" Keyboard
map <C-w>v :vertical wincmd f<CR>
imap <C-_> <C-X>/


" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r


" Pathogen
filetype on             " Fix for $? == 1
filetype off

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on


" Colorscheme
syntax on
set background=light
colorscheme solarized


