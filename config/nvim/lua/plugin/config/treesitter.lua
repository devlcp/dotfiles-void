local config = require 'nvim-treesitter.configs'

config.setup {
  ensure_installed = 'maintained', 
  highlight = {enable = true}, 
  ignore_install = { },
  indent = {
    enable = true,
  },
  autotag = {enable = true}
}
