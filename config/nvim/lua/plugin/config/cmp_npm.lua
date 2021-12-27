local cmp_npm = require('cmp-npm')

cmp_npm.setup({
  sources = {
    { name = 'npm', keyword_length = 4 },
  }
})
