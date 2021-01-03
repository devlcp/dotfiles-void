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

	let g:dogrun_transparent_bg = 1
 
	silent! colorscheme dogrun "home pencil gruvbox-material PaperColor nightfly dim
	set background=dark

	" highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	" highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	" highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	" highlight DiffAdd ctermfg=green cterm=bold
	" highlight DiffDelete ctermfg=red cterm=bold
	" highlight DiffChange ctermfg=yellow

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
