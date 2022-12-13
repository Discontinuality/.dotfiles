set nocompatible

filetype on
filetype plugin on
filetype indent on

inoremap jj <ESC>
let mapleader = "'"
syntax on
set noswapfile
set nobackup

set backspace=2

set nowrap
set incsearch
set ignorecase
set smartcase

set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set hidden

set splitbelow
set splitright
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <leader>f :Buffer<CR>

nnoremap n nzz
nnoremap N Nzz

set vb t_vb=
set noerrorbells
set hidden

nnoremap <leader>s :set spell!<CR>
nnoremap <leader>bs :BrowserSyncStart<CR> :BrowserSyncOpen<CR>
nnoremap <leader>bo :BrowserSyncOpen<CR>
nnoremap <leader>be :BrowserSyncStop<CR>

nnoremap K i<CR><Esc>

set wildmenu
set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set shiftwidth=2
set tabstop=2
set expandtab

set pastetoggle=<F2>

nnoremap <silent> <leader>' :nohlsearch<CR>
nnoremap <space> :
nnoremap <silent> <leader>s :set spell!<CR>

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
let g:gruvbox_italic=1
let g:gruvbox_underline=0
let g:user_emmet_leader_key=','

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'
Plug 'tamago324/vim-browsersync'
Plug 'tyru/open-browser.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'junegunn/goyo.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

let g:fzf_layout = { 'down': '40%' }

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
