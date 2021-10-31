let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
            \ 'variables.vim',
            \ 'set.vim',
            \ 'autocmd.vim',
            \ 'commands.vim',
            \ 'ui.vim'
            \]

for f in g:config_file_list
    execute 'source ' . g:nvim_config_root . '/' . f
endfor

:lua << EOF
require('plugins')

require('plugconfig.lspconfig')
require('plugconfig.compe')
require('plugconfig.gitsigns')
require('plugconfig.treesitter')
require('plugconfig.bufferline')
require('plugconfig.nvim_comment')
require('plugconfig.lspkind')
require('plugconfig.colorizer')
require('plugconfig.lightbulb')
require('plugconfig.lush')
require('plugconfig.telescope')
require('plugconfig.lualine')
require('plugconfig.lspinstall')
require('plugconfig.toggleterm')
require('plugconfig.dap')
require('plugconfig.autotag')
-- require('plugconfig.fterm')
--  require('plugconfig.saga')
--  require('plugconfig.autopairs')
EOF


