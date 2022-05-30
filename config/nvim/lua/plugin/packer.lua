vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use { 'wbthomason/packer.nvim', opt = true }

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
    -- use 'github/copilot.vim'

    -- COMPLETE
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp' -- complete
    use 'David-Kunz/cmp-npm' -- complete npm packages.json

    -- Snippets
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-vsnip' -- compatible with nvim-cmp
    use 'rafamadriz/friendly-snippets'

    -- VISUAL ELEMENT
    use { 'rktjmp/lush.nvim', branch = 'main' }
    use 'lukas-reineke/indent-blankline.nvim' 
    use 'kyazdani42/nvim-web-devicons'
    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }
    use 'norcalli/nvim-colorizer.lua'
    use 'hoob3rt/lualine.nvim'
    use 'folke/todo-comments.nvim'
    use 'folke/trouble.nvim' 
    use 'folke/which-key.nvim'
    use 'mhinz/vim-startify' -- startup screen view

    -- LANGUAGE
    use 'pangloss/vim-javascript'
    use 'mxw/vim-jsx'
    use 'alaviss/nim.nvim'
    use { 'evanleck/vim-svelte', branch = 'main' }

    -- TOOLS
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'machakann/vim-sandwich' 
    use { 'liuchengxu/vim-which-key', opt = true }
    -- Changed root dir
    use 'airblade/vim-rooter'
    -- Scroll nice
    use 'psliwka/vim-smoothie'
    -- Move on line 'f', 'F', 't' and 'T'
    -- use 'unblevable/quick-scope'
    -- Rename tag html/xml/jsx/etc
    use 'AndrewRadev/tagalong.vim'
    -- See preview markdown file 
    use { 'andymass/vim-matchup', opt = true } 
    use { 'vimwiki/vimwiki', opt = true }
    use 'christoomey/vim-tmux-navigator'
    use 'Jorengarenar/vim-MvVis'
    use 'terrortylor/nvim-comment'
    use 'sheerun/vim-polyglot'
    -- Terminal
    use 'akinsho/toggleterm.nvim'
    use 'kyazdani42/nvim-tree.lua' -- file explorer
    use 'akinsho/bufferline.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/popup.nvim' }, 
            { 'nvim-lua/plenary.nvim' }
        }
    }
    use 'xiyaowong/telescope-emoji.nvim'
    use 'nvim-telescope/telescope-github.nvim'
    use {
        'pwntester/octo.nvim', 
        config=function()
            require"octo".setup()
        end
    }
end)
