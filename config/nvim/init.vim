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

call plug#begin('~/.vim/plugged')
"	THEMES
	Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'sainnhe/gruvbox-material'
	Plug 'NLKNguyen/papercolor-theme'
"	TOOLS
	Plug 'itchyny/lightline.vim'
    " Plug 'bluz71/vim-moonfly-statusline'
    Plug 'christoomey/vim-tmux-navigator'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'Yggdroot/indentLine'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-eunuch' " create dir,file,rename,delete
	"Plug 'spolu/dwm.vim'
	Plug 'sheerun/vim-polyglot'
    Plug 'airblade/vim-gitgutter'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'jiangmiao/auto-pairs'
"	LANGUAGES
	"Plug 'alaviss/nim.nvim'
    Plug 'leafOfTree/vim-svelte-plugin' " revisar conf: https://github.com/leafOfTree/vim-svelte-plugin
    "	SNIPPETS
	Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
call plug#end()

let mapleader=" "

" Colorscheme configuration.
if &t_Co > 2
	syntax on
    set termguicolors
    let g:miramare_enable_italic = 1
    let g:miramare_transparent_background = 1
	let g:miramare_disable_italic_comment = 1
	let g:PaperColor_Theme_Options = {
				\   'theme': {
				\     'default': {
				\       'transparent_background': 1
				\     }
				\   }
				\ }

	silent! colorscheme nightfly "PaperColor nightfly dim
	set background=dark

	highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	highlight DiffAdd ctermfg=green cterm=bold
	highlight DiffDelete ctermfg=red cterm=bold
	highlight DiffChange ctermfg=yellow

	set colorcolumn=110
	let g:dwm_master_pane_width=110

	" Sometimes I see the syntax be out of sync
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif

" Use a specific pipe ch
set fillchars+=vert:\┊

let g:indentLine_setColors = 0
let g:indentLine_enabled = 1

let g:moonflyWithCocIndicator = 1
let g:moonflyWithALEIndicator = 1
let g:moonflyWithGitBranchCharacter = 1
let g:moonflyIgnoreDefaultColors = 1

let g:lightline = {
      \ 'colorscheme': 'nightfly',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

let NERDTreeQuitOnOpen=1

"   SAVE FILE CTRL+S
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

nmap <Leader>q :q<CR>
nmap <Leader>nt :NERDTreeToggle<CR>

" WIDTH AND HEIGHT SPLIT
nmap <Leader>h :vertical resize +5<CR>
nmap <Leader>l :vertical resize -5<CR>
nmap <Leader>j :resize +5<CR>
nmap <Leader>k :resize -5<CR>

" DISABLE ARROW KEYS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
