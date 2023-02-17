-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "ellisonleao/gruvbox.nvim" }

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use 'ntpeters/vim-better-whitespace'

    use 'mfussenegger/nvim-dap'


    use 'norcalli/nvim-colorizer.lua'

    use 'tpope/vim-surround'

    use 'tpope/vim-repeat'

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use 'Vimjas/vim-python-pep8-indent'

    use 'alvan/vim-closetag'

    use 'AndrewRadev/tagalong.vim'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        tag = 'nightly'
    }

    use {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup { }
        end
    }

    use 'tyru/open-browser.vim'
    use 'weirongxu/plantuml-previewer.vim'

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use 'nvim-tree/nvim-web-devicons'
    use 'echasnovski/mini.indentscope'
    use 'kyazdani42/blue-moon'
    use 'AlexvZyl/nordic.nvim'
    use 'olimorris/onedarkpro.nvim'

    use 'vim-pandoc/vim-pandoc'
    use 'vim-pandoc/vim-pandoc-syntax'
    use 'vim-pandoc/vim-rmarkdown'
    use 'chrisbra/csv.vim'
    use 'lervag/vimtex'
end)
