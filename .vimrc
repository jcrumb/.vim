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
Plugin 'bling/vim-bufferline'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdtree'
" Plugins end
call vundle#end()
filetype plugin indent on
" DONE VUNDLE SETTINGS


syntax enable

" show line numbers
set nu

" Stop yelling at me about unsaved buffers
set hidden

" The default backspacing behaviour sucks
set backspace=indent,eol,start

" Searching/matching
set showcmd
set showmatch
set ignorecase
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

" Keybindings
map <silent> <Leader>t :NERDTreeToggle<CR>
nmap ; :
imap jj <ESC>

" VIM sacrilege: scroll/highlight with the mouse
set mouse=a
set ttymouse=xterm

" Show buffer list in the status line
let g:bufferline_echo = 0
  autocmd VimEnter *
      \ let &statusline='%{bufferline#refresh_status()}'
        \ .bufferline#get_status_string()

" Highlight lines that are longer than 80 chars
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
