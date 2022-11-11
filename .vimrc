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
set hidden

set vb t_vb=
set noerrorbells
set hidden

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
nnoremap <leader>s :set spell!<CR>

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
let g:gruvbox_italic=1
let g:gruvbox_underline = '0'

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
let g:gruvbox_italic=1
let g:gruvbox_underline=0

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd vimenter * ++nested colorscheme gruvbox

if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

set number
set background=dark
set ruler

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif 
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave    * if &nu                  | set nornu | endif
augroup END
