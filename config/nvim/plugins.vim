call plug#begin('~/.vim/plugged')
"	THEMES
	Plug 'bluz71/vim-nightfly-guicolors'
	Plug 'sainnhe/gruvbox-material'
	Plug 'lifepillar/vim-wwdc17-theme'
	Plug 'NLKNguyen/papercolor-theme'
	Plug 'reedes/vim-colors-pencil'
    Plug 'wadackel/vim-dogrun'
"	TOOLS
	" Plug 'graywh/vim-colorindent'
	Plug 'itchyny/lightline.vim'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
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
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'jiangmiao/auto-pairs'
	Plug 'ryanoasis/vim-devicons'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"	LANGUAGES
	"Plug 'alaviss/nim.nvim'
	Plug 'pangloss/vim-javascript'
	Plug 'leafOfTree/vim-svelte-plugin' " revisar conf: https://github.com/leafOfTree/vim-svelte-plugin
"	SNIPPETS
	Plug 'SirVer/ultisnips'
	Plug 'mlaursen/vim-react-snippets'
    Plug 'honza/vim-snippets'
"   OTHERS
	Plug 'voldikss/vim-floaterm'
	Plug 'junegunn/goyo.vim'
	Plug 'justinmk/vim-sneak'
call plug#end()
