set nocompatible
" Initialize pathogen
call pathogen#infect()
call pathogen#helptags()

" set number
filetype plugin indent on
syntax on
set encoding=utf-8
set spell spelllang=en_us
runtime! config/**/*.vim

inoremap jk <ESC>
let mapleader = "\<Space>"

" nerd tree settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-\> :NERDTreeToggle<CR>
