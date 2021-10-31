local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  map(mode, lhs, rhs, options)
end

map('n', '<leader>q', '<cmd>q<CR>')

map('n', '<silent> <C-S>', '<cmd>update<CR>')
map('v', '<silent> <C-S>', '<C-C> <cmd>update<CR>')
map('i', '<silent> <C-S>', '<C-O> <cmd>update<CR>')
-- Disable arrow key
map('', '<Up>', '<NOP>')
map('', '<Down>', '<NOP>')
map('', '<Left>', '<NOP>')
map('', '<Right>', '<NOP>')
-- floaterm
map('n', '<leader>ft', '<cmd>FloatermToggle<CR>')
-- telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
-- chadtree
map('n', '<leader>nt', '<cmd>NvimTreeToggle<CR>')
map('n', '<C-n>', '<cmd>NvimTreeFindFile<CR>')
-- lsconfig
map('n', '<leader>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', '<leader>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<leader>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<leader>r', '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<leader>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
