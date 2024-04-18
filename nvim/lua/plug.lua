vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'simeji/winresizer'

    use 'vim-airline/vim-airline'

    use 'mattn/emmet-vim'

    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
    }

    use 'leafOfTree/vim-matchtag'

    use 'morhetz/gruvbox'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    use 'tpope/vim-fugitive'

    use 'vim-test/vim-test'

    -- todo 
    use {
        'phpactor/phpactor', 
        ft = {'php'}
    }

    use 'tenmajkl/phpactor-telescope'

    use {
        'evanleck/vim-svelte',
        branch = 'main'
    }

    -- use 'github/copilot.vim' student copilot expired and my isic is weird

    use {
        'mg979/vim-visual-multi',
        branch = 'master'
    }

    use 'ThePrimeagen/vim-be-good'

    use 'tenmajkl/vim-ortographia'

    use 'mfussenegger/nvim-jdtls'

end)


--require'nvim-tree'.setup {
--    open_on_setup = true,
--    diagnostics = {
--        enable = true
--        },
--    git = {
--        ignore = false
--        }
--    }
--
--require("nvim-web-devicons").set_icon {
--    juice = {
--        icon = "",
--        color = "#EFBF2F",
--        cterm_color = "33",
--        name = "Juice"
--        }
--    }
--
--
