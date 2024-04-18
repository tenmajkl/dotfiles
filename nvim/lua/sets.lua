vim.cmd.colorscheme('gruvbox')
vim.cmd.syntax('enable')
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.fillchars = 'vert:│'
vim.opt.fileencodings = 'utf-8'
vim.opt.backspace = 'indent,eol,start'
vim.cmd.filetype('indent', 'on')
vim.cmd.language('en_US')
vim.opt.autowrite = true
vim.opt.termguicolors = true

vim.g.user_emmet_leader_key=','

vim.cmd.command('PT', 'PhpactorTelescope')

vim.g.vim_matchtag_enable_by_default = 1
vim.g.vim_matchtag_files = '*.html,*.xml,*.js,*.juice,*.lemon.php,*vue'

--vim.g.VM_maps = {}
--vim.g.VM_maps['Add Cursor Down'] = '<S-Down>'
--vim.g.VM_maps['Add Cursor Up'] = '<S-Up>'

require('telescope').setup{
defaults = {
    file_ignore_patterns = {"vendor", "node_modules"}
    }
}

require'nvim-tree'.setup {
    open_on_setup = true,
    diagnostics = {
        enable = true
        },
    git = {
        ignore = false
        }
    }

require("nvim-web-devicons").set_icon {
    juice = {
        icon = "",
        color = "#EFBF2F",
        cterm_color = "33",
        name = "Juice"
        }
    }

require'lspconfig'.phpactor.setup{
    on_attach = on_attach,
    cmd = {'/Users/misa/.local/share/nvim/site/pack/packer/opt/phpactor/bin/phpactor', 'language-server'},
    init_options = {
    }
}

require'lspconfig'.rust_analyzer.setup{
    on_attach = on_attach,
    init_options = {
    }
}

require'lspconfig'.clangd.setup{
    on_attach = on_attach,
    init_options = {
    }
}

require'lspconfig'.hls.setup{
    on_attach = on_attach,
    init_options = {
    }
}
