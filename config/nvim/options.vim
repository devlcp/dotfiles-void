set nocompatible            " disable vi compatibility mode
set history=1000            " increase history size
set noswapfile              " don't create swapfiles
set nobackup                " don't backup, use git!

" Enable filetype
filetype indent plugin on

" Persist undo history between file editing sessions.
set undofile
set undodir=~/.config/nvim/undodir

" Modify indenting settings
set autoindent              " autoindent always ON.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode
set hidden

set noshowmode
set laststatus=2        " always show statusbar
set wildmenu            " enable visual wildmenu

set nowrap              " don't wrap long lines
set number              " show line numbers
set numberwidth=1
set relativenumber      " show numbers as relative by default
set showmatch           " higlight matching parentheses and brackets
set mouse=a
set clipboard=unnamed
" 	ICONS NERDFONT
" set guifont=DroidSansMono\ Nerd\ Font\ 14
" Use a specific pipe ch
set fillchars+=vert:\┊
