local set = vim.opt

set.compatible = false
set.history = 1000
set.backup = false
set.swapfile = false
-- file settings
set.hidden = true
set.backspace = {'indent','eol','start'}
set.encoding = 'utf-8'
-- persist undo history
set.undofile = true
set.undodir = '/home/devlcp/.config/nvim/undodir'
-- modify indenting settings
set.expandtab = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.autoindent = true
set.smartindent = true
-- other
set.wildmenu = true
set.laststatus = 2
set.showmode = false
set.eol = true
set.conceallevel = 2
set.formatoptions = 'tcqr'
set.clipboard = 'unnamedplus'
set.listchars = {tab = '»·', trail = '·', extends = '»', precedes = '<', nbsp = '·'}
-- set.fillchars = {vert = '┊', fold = '>+<'}
set.cursorline = true
set.mouse = 'a'
set.showmatch = true
set.showtabline = 2
set.wrap = false
set.termguicolors = true
set.colorcolumn = '105'
set.scrolloff = 4
set.timeoutlen = 300
set.completeopt = {'menu','menuone','noselect'}
set.winfixwidth = true
set.relativenumber = true
set.number = true
set.splitbelow = true
set.splitright = true
set.synmaxcol = 4000

-- set.spell = true
-- set.spelllang = { 'es_MX','en_us' }
