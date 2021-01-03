" FloatTerm
nnoremap <silent> <leader>ft	:FloatermToggle<CR>
tnoremap <silent> <leader>ft	<C-\><C-n>:FloatermToggle<CR>

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
