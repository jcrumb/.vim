" Break vi compatability, because this ain't 1976
set nocompatible

" VUNDLE SETTINGS
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins begin
Plugin 'Townk/vim-autoclose'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
" Plugins end
call vundle#end()
filetype plugin indent on
" DONE VUNDLE SETTINGS


syntax enable

" show line numbers
set nu

" The default backspacing behaviour sucks
set backspace=indent,eol,start

" Searching/matching
set showcmd
set showmatch
set smartcase
set incsearch
set hlsearch

" Clear search highlights with a keybind
nmap <silent> <leader><space> :nohlsearch<CR>

" Indenting
set smartindent
set autoindent
set copyindent
set smarttab

" Get rid of swap/backup files
set noswapfile
set nobackup
set nowb

" Better autocomplete
set wildmenu

" Status line
set ls=2
set ruler

" Colorscheme
colorscheme base16-default
set background=dark
