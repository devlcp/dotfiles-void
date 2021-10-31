autocmd FileType scss setl iskeyword+=@-@

" augroup javascript_folding
"     au!
"     au FileType javascript setlocal foldmethod=syntax
" augroup END
" Auto Indent

autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
