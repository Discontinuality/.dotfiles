set nocompatible

filetype on
filetype plugin on
filetype indent on

inoremap jj <ESC>
let mapleader = "'"
syntax on
set noswapfile
set nobackup

set nowrap
set incsearch
set ignorecase
set smartcase

set showmode
set showmatch
set hlsearch
set history=1000

set vb t_vb=
set noerrorbells

nnoremap <leader>s :set spell!<CR>

set wildmenu
set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set shiftwidth=4
set tabstop=4
set expandtab

set pastetoggle=<F2>

nnoremap <silent> <leader>' :nohlsearch<CR>
nnoremap <space> :

autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

set number

set ruler

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif 
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave    * if &nu                  | set nornu | endif
augroup END
