vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}

    -- THEMES
    use '~/dev/coldgrey-color' -- personal theme
    use 'wadackel/vim-dogrun' 

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        'williamboman/nvim-lsp-installer',
    }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'
    use 'github/copilot.vim'

    -- COMPLETE
    use 'hrsh7th/nvim-compe'

    -- Snippets
    use 'hrsh7th/vim-vsnip'
    -- use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'

    -- VISUAL ELEMENT
    use {'rktjmp/lush.nvim', branch = 'main'}
    use 'lukas-reineke/indent-blankline.nvim' 
    use 'kyazdani42/nvim-web-devicons'
    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }
    use 'norcalli/nvim-colorizer.lua'
    use 'hoob3rt/lualine.nvim'

    -- LANGUAGE
    use 'pangloss/vim-javascript'
    use 'mxw/vim-jsx'
    use 'alaviss/nim.nvim'
    use { 'evanleck/vim-svelte', branch = 'main' }

    -- DEBUG
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "Pocco81/DAPInstall.nvim"} }

    -- TOOLS
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'machakann/vim-sandwich' 
    use {'liuchengxu/vim-which-key', opt = true}
    -- Changed root dir
    use 'airblade/vim-rooter'
    -- Scroll nice
    use 'psliwka/vim-smoothie'
    -- Move on line 'f', 'F', 't' and 'T'
    use 'unblevable/quick-scope'
    -- Rename tag html/xml/jsx/etc
    use 'AndrewRadev/tagalong.vim'
    -- See preview markdown file 
    use {'andymass/vim-matchup', opt = true} 
    use {'vimwiki/vimwiki', opt = true}
    use 'christoomey/vim-tmux-navigator'
    use 'Jorengarenar/vim-MvVis'
    use 'terrortylor/nvim-comment'
    use 'sheerun/vim-polyglot'
    -- Terminal
    use 'akinsho/nvim-toggleterm.lua'
    -- use 'numToStr/FTerm.nvim'
    -- File explorer
    -- use 'kyazdani42/nvim-tree.lua'
    use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {
        view = {
            side = 'right',
            auto_resize = false,
        }
    } end
}
    use 'akinsho/nvim-bufferline.lua'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {
        'dense-analysis/ale',
        ft = { 'css', 'sh', 'bash', 'javascript', 'html', 'markdown', 'vim' },
        cmd = 'ALEEnable',
        config = 'vim.cmd[[ALEEnable]]'
    }
end)
