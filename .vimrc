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

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
let g:gruvbox_italic=1
let g:gruvbox_underline=0
let g:airline_theme='base16_gruvbox_dark_hard'
let g:airline_powerline_fonts = 1

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd vimenter * ++nested colorscheme gruvbox

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

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
