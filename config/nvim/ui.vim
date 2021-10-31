if exists("&termguicolors")
    if $TERM == "xterm-256color"
        set termguicolors
    else
        set notermguicolors
    endif
endif

" Use dark background
set background=dark
"}}

let g:coldgrey_transparent = 1

colorscheme coldgrey 
