let mapleader=" "
let maplocalleader = ","

" Quick-Scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let g:javascript_conceal = 0

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
let g:ale_completion_enabled = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
" let g:ale_sign_error = ''
" let g:ale_sign_warning = ''
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
" completion-nvim
" let g:completion_enable_snippet = 'UltiSnips'
let g:nvim_tree_side = 'right'
let g:nvim_tree_auto_close = 1
let g:nvim_tree_auto_open = 1
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_indent_markers = 1

" BARBAR
let bufferline = get(g:, 'bufferline', {})
" Enable/disable animations
let bufferline.animation = v:true
" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false
" Enable/disable close button
let bufferline.closable = v:true

" MarkdownPreview
let g:mkdp_browser = 'opera'
let g:mkdp_command_for_global = 1

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Enable/disable icons
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'

" Sets the maximum padding width with which to surround each tab
let bufferline.maximum_padding = 4

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null
