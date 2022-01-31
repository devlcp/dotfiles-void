local cmd = vim.api.nvim_set_keymap

-- Salir de archivo o nvim
cmd('n','<leader>q', ':q<CR>', { noremap = false, silent = false })
-- disable arrow keys
cmd('n', '<Up>', '<NOP>', { noremap = true, silent = false})
cmd('n', '<Down>', '<NOP>', { noremap = true, silent = false})
cmd('n', '<Left>', '<NOP>', { noremap = true, silent = false})
cmd('n', '<Right>', '<NOP>', { noremap = true, silent = false})
-- format
-- cmd('n', '<leader>f', 'gg=G', { noremap = true, silent = true })
-- better indenting
cmd('v', '<', '<gv', { noremap = true, silent = true })
cmd('v', '>', '>gv', { noremap = true, silent = true })
-- save file
cmd('n','<C-S>', ':update<CR>', { noremap = true, silent = true })
cmd('v','<C-S>', '<C-C>:update<CR>', { noremap = true, silent = true })
cmd('i','<C-S>', '<C-O>:update<CR>', { noremap = true, silent = true })
-- Open file current in Browser
cmd('n','<F12>f', ':exe ":silent !firefox %<CR>"', { noremap = true, silent = false })
cmd('n','<F12>b', ':exe ":silent !brave-browser %<CR>"', { noremap = true, silent = false })
cmd('n','<F12>o', ':exe ":silent !opera %<CR>"', { noremap = true, silent = false })
cmd('n','<F12>c', ':exe ":silent !chromium-browser %<CR>"', { noremap = true, silent = false })
-- NvimTree
cmd('n','<leader>nt', ':NvimTreeToggle<CR>', { noremap = true, silent = false })
cmd('n','<leader>nr', ':NvimTreeRefresh<CR>', { noremap = true, silent = false })
-- ToggleTerm
cmd('n', '<F2>', ':2ToggleTerm<CR>', { noremap = true, silent = true })
-- Telescope
cmd('n','<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = false })
cmd('n','<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = false })
cmd('n','<leader>tb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = false })
cmd('n','<leader>th', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = false })
-- Buffer
cmd('n','<A-c>', ':bdelete<CR>', { noremap = true, silent = true })
cmd('n','<C-p>', ':bprevious<CR>', { noremap = true, silent = true })
cmd('n','<C-n>', ':bnext<CR>', { noremap = true, silent = true })
-- vsnip expand or jump
-- resize with arrows
cmd('n', '<C-Up>', ':resize -2<CR>', { noremap = true, silent = true })
cmd('n', '<C-Down>', ':resize +2<CR>', { noremap = true, silent = true })
cmd('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
cmd('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })
-- lspconfig
cmd('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
-- Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
-- See https://github.com/hrsh7th/vim-vsnip/pull/50
cmd('n', 's', '<Plug>(vsnip-select-text)', { noremap = false, silent = false })
cmd('x', 's', '<Plug>(vsnip-select-text)', { noremap = false, silent = false })
cmd('n', 'S', '<Plug>(vsnip-cut-text)', { noremap = false, silent = false })
cmd('x', 'S', '<Plug>(vsnip-cut-text)', { noremap = false, silent = false })

-- cmd('n', '<leader>xx', '<cmd>TroubleToggle<cr>', { noremap = true, silent = false })
