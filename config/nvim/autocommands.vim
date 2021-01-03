" autocmd FileType python let b:coc_suggest_disable = 1
" autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
