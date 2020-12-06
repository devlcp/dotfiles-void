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
" 	ICONS NERDFONT
set guifont=DroidSansMono\ Nerd\ Font\ 11

call plug#begin('~/.vim/plugged')
"	THEMES
	Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'sainnhe/gruvbox-material'
	Plug 'lifepillar/vim-wwdc17-theme'
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'reedes/vim-colors-pencil'
"	TOOLS
	" Plug 'graywh/vim-colorindent'
	Plug 'itchyny/lightline.vim'
	Plug 'dense-analysis/ale'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'norcalli/nvim-colorizer.lua'
    Plug 'christoomey/vim-tmux-navigator'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'Yggdroot/indentLine'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
	Plug 'mg979/vim-visual-multi'
	Plug 'sheerun/vim-polyglot'
    Plug 'airblade/vim-gitgutter'
	Plug 'justinmk/vim-sneak'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'jiangmiao/auto-pairs'
	Plug 'ryanoasis/vim-devicons'
"	LANGUAGES
	"Plug 'alaviss/nim.nvim'
	Plug 'pangloss/vim-javascript'
	Plug 'leafOfTree/vim-svelte-plugin' " revisar conf: https://github.com/leafOfTree/vim-svelte-plugin
    "	SNIPPETS
	Plug 'SirVer/ultisnips'
	Plug 'mlaursen/vim-react-snippets'
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
				\     'default.light': {
				\       'transparent_background': 1
				\     }
				\   }
				\ }

	let g:gruvbox_material_background = 'soft'
    let g:gruvbox_material_enable_italic = 1
    let g:gruvbox_material_disable_italic_comment = 1
	let g:gruvbox_material_transparent_background = 1
	let g:gruvbox_material_enable_bold = 1
	let g:gruvbox_material_cursor = 'green'

    let g:pencil_gutter_color = 1
	let g:wwdc17_frame_color = 9
	let g:wwdc17_transp_bg = 1
 
	silent! colorscheme gruvbox-material "home pencil gruvbox-material PaperColor nightfly dim
	set background=dark

	highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	highlight DiffAdd ctermfg=green cterm=bold
	highlight DiffDelete ctermfg=red cterm=bold
	highlight DiffChange ctermfg=yellow

	set colorcolumn=110

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

" KITE CONFIG
let g:kite_supported_languages = ['python', 'javascript']

autocmd FileType python let b:coc_suggest_disable = 1
autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" c-space to trigger completion
if &filetype == "javascript" || &filetype == "python"
	inoremap <c-space> <C-x><C-u>
else
	inoremap <silent><expr> <c-space> coc#refresh()
endif

" VIM-JAVASCRIPT
" set conceallevel=1 " HIDDEN BLOCK CODE
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_arrow_function       = "⇒"

let g:indentLine_setColors = 1
let g:indentLine_enabled = 1

let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], ['relativepath', 'modified']],
	  \	  'right':[['kitestatus'], ['gitbranch','filetype', 'percent']]
      \ },
	  \ 'inactive': {
	  \   'left': [['inactive'], ['relativepath']],
	  \	  'right': [['bufnum']]
	  \ },
	  \ 'component': {
	  \	  'bufnum': '%n',
	  \   'inactive': '--- inactive ---'
	  \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
	  \	  'kitestatus': 'kite#statusline'
      \ }
      \}

let NERDTreeQuitOnOpen=1
let g:UltiSnipsExpandTrigger="<tab>"

"   SAVE FILE CTRL+S
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

nmap <Leader>q :q<CR>
nmap <Leader>nt :NERDTreeToggle<CR>

map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
" WIDTH AND HEIGHT SPLIT
nmap <Leader>h :vertical resize -10<CR>
nmap <Leader>l :vertical resize +10<CR>
" nmap <Leader>j :resize +5<CR>
" nmap <Leader>k :resize -5<CR>

" DISABLE ARROW KEYS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" MAP SNEAK
map f <Plug>Sneak_s
map F <Plug>Sneak_S
map t <Plug>Sneak_t
map T <Plug>Sneak_T
" MULTIPLE CURSORS COC.NVIM
nmap <silent> <C-p> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)
" use normal command like `<leader>xi(`
nmap <leader>x  <Plug>(coc-cursors-operator)
" CSPELL
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
" FZF CONFIG 
" Mapping selecting mappings
nnoremap <C-p> :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
" ALE CONFIG
let b:ale_linters = {'javascript': ['eslint', 'prettier'], 'css': ['prettier']}

let g:ale_sign_error = ''
let g:ale_sign_warning = ''

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
