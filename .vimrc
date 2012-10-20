
syntax enable
set undolevels=150
set history=150
set backspace=indent,eol,start

if has('gui_running')
	set background=dark
	set lines=50 columns=100
else
	set t_Co=256
	let g:solarized_termcolors=256
	"set t_Co=16
	"let g:solarized_termcolors=16
	set background=dark
endif

set showmatch
set matchtime=2

set ts=2
set sw=2
set softtabstop=2
set expandtab
set autoindent

set number
set ruler

colorscheme solarized

set guifont=Monospace\ 12
