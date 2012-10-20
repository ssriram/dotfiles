"
"   My .vimrc
"
"   Author: ssriram
"

"   Pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()


"
"   Settings
"   

filetype plugin indent on

syntax enable

set undolevels=1500
set history=150

if has('gui_running')
    set background=dark
    set lines=45 columns=100
else
    set background=dark
    
    set t_Co=256
    let g:solarized_termcolors=256

	"set t_Co=16  "When using tty use t_Co=16
	"let g:solarized_termcolors=16
endif

colorscheme solarized
set guifont=Monospace\ 14

set number
set ruler

set nowrap

set ts=4
set sw=4
set softtabstop=4
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



"   Textmate characters
"set list
"set listchars=tab:▸\ ,eol:¬


"
"   Custom bindings
"

nnoremap ; :

let mapleader=","
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>v V`]

"  Save file with root permissions 
cmap w!! w !sudo tee % >/dev/null

"   Search with normal Regex 
nnoremap / /\v
vnoremap / /\v

"   F1 is ESC
nnoremap <F1> <ESC>
inoremap <F1> <ESC>
vnoremap <F1> <ESC>

"   TAB is match
nnoremap <tab> %
vnoremap <tab> %

"   Autosave buffers
au FocusLost * :wa

"   Windowing
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"   VIM practise
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
