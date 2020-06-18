set relativenumber
set showcmd "shows command line on bottom
set cursorline "highlight current line
set wildmenu
set lazyredraw
set showmatch

set incsearch "search as characters are typed
set hlsearch "highlight matches

set tabstop=2
set softtabstop=2
set expandtab "tabs are spaces

syntax on
set nocompatible
set backspace=indent,eol,start "enable typical backspace

" Highlight unwanted whitespace
set listchars=tab:>·,trail:~
set list

let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
