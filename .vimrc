"
"   My .vimrc
"
"   Author: ssriram
"

"
"   Pathogen
"

filetype off
execute pathogen#infect()
execute pathogen#helptags()


"
"   Settings
"   

filetype plugin indent on
syntax enable

set undolevels=1500
set history=150

if has('gui_running')
  set lines=30 columns=90
  set background=dark
  set guifont=Monospace\ 12
else
  set t_Co=256
  set background=dark
endif

colorscheme desert

set number
set ruler
set nowrap

set ts=2
set sw=2
set softtabstop=2
set backspace=indent,eol,start
set expandtab
set autoindent
set copyindent
set smarttab

set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set gdefault

set hidden
set title
set visualbell
set wildmenu
set wildignore=*.swp,*.bak,*.o,*.so,*.pyc

set showmode
set showcmd
set cursorline
set ttyfast

"
"   Textmate characters
"
"set list
"set listchars=tab:▸\ ,eol:¬


"
"   Custom bindings
"

": = ; during fast typing this comes handy
nnoremap ; :

let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>v V`]

" Save file with root permissions 
cmap w!! w !sudo tee % >/dev/null

" Search with normal Regex 
nnoremap / /\v
vnoremap / /\v

" F1 is ESC
nnoremap <F1> <ESC>
inoremap <F1> <ESC>
vnoremap <F1> <ESC>

" TAB is match
nnoremap <tab> %
vnoremap <tab> %

" Autosave buffers
"au FocusLost * :wa

" Windowing
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" VI practise
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
