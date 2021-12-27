-- setting global options
local o = vim.o

if o.shell == 'fish$' then
  o.shell = [[/bin/bash]]
end

require('settings.let')
require('settings.set')
require('cmd.main')
require('ui.main')

require('plugin.packer')
-- config
require('plugin/config.lspconfig')
require('plugin/config.gitsigns')
require('plugin/config.treesitter')
require('plugin/config.bufferline')
require('plugin/config.nvim_comment')
require('plugin/config.lspkind')
require('plugin/config.colorizer')
require('plugin/config.telescope')
require('plugin/config.lualine')
require('plugin/config.lspinstall')
require('plugin/config.toggleterm')
require('plugin/config.autotag')
require('plugin/config.nvim_tree')
require('plugin/config.autopairs')
require('plugin/config.trouble')
require('plugin/config.todo_comments')
require('plugin/config.which_key')
require('plugin/config.nvim_cmp')
require('plugin/config.cmp_npm')
-- require('plugin/config.compe')
-- require('plugin/config.formatter')
