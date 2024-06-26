-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
	    'nvim-telescope/telescope.nvim', tag = '0.1.5',
	    -- or                            , branch = '0.1.x',
	    requires = { {'nvim-lua/plenary.nvim'} }
    }

    use ('nvim-telescope/telescope-ui-select.nvim')

    use ("olimorris/onedarkpro.nvim")

    use ("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})

    use ('nvim-treesitter/playground')

    use {
	    'nvim-lualine/lualine.nvim',
	    requires = {'nvim-tree/nvim-web-devicons', opt = true }
    }

    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')

    use {
	    'VonHeikemen/lsp-zero.nvim',
	    branch = 'v3.x',
	    requires = {
		    --- Uncomment the two plugins below if you want to manage the language servers from neovim
		    {'williamboman/mason.nvim'},
		    {'williamboman/mason-lspconfig.nvim'},

		    -- LSP Support
		    {'neovim/nvim-lspconfig'},
		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},
		    {'hrsh7th/cmp-nvim-lsp'},
		    {'L3MON4D3/LuaSnip'},
		    {'hrsh7th/cmp-buffer'},
		    {'hrsh7th/cmp-path'},
		    {'saadparwaiz1/cmp_luasnip'},
		    {'hrsh7th/cmp-nvim-lua'},
		    {'rafamadriz/friendly-snippets'},
            {'hrsh7th/cmp-cmdline'},
	    }
    }

    use {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    }

    use {'windwp/nvim-ts-autotag'}

    use {"ThePrimeagen/vim-be-good"}

    use {"lukas-reineke/indent-blankline.nvim"}

    use {'nvim-tree/nvim-tree.lua'}

end)
