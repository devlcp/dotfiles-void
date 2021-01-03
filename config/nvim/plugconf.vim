let mapleader=" "
let maplocalleader = ","
" FloatTerm
let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'

let g:indentLine_setColors = 1
let g:indentLine_enabled = 1

let g:lightline = {
      \ 'colorscheme': 'dogrun',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], ['relativepath', 'modified']],
	  \	  'right':[['gitbranch','filetype', 'percent']],
      \ },
	  \ 'inactive': {
	  \   'left': [['inactive'], ['relativepath']],
	  \	  'right': [['bufnum']]
	  \ },
	  \ 'component': {
	  \	  'bufnum': '%n',
	  \   'inactive': '------- inactive -------'
	  \ },
      \ 'component_function': {
      \  'gitbranch': 'fugitive#head',
      \ },
      \}

let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:UltiSnipsExpandTrigger="<tab>"

let g:javascript_plugin_flow = 1

" ALE CONFIG
let g:ale_linters = {
			\	'javascript': ['eslint', 'flow'], 
			\	'css': ['prettier'],
			\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
let g:ale_sign_column_always = 1
let g:ale_completion_autoimport = 1
let g:ale_completion_enabled = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
" let g:ale_sign_error = ''
" let g:ale_sign_warning = ''
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
" SNEAK
let g:sneak#label = 1
" Prettier
let g:prettier#autoformat = 1
