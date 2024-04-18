
" TEN MAJKL NEOVIM CONFIG
"
" Just neovim configuration file, my goal was to create tool better than vS cOdE that runs in TERMINAL
"
" The best editors are (neo)?vi(m)? and emacs
"
" TODO:
" Split config to multiple files
" =======================

" setting stuff
set nocompatible
syntax enable 
set tabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set number
set cursorline
set nowrap
set title
set shortmess+=c
set formatoptions+=r
set incsearch
set hlsearch
set fillchars+=vert:\│
au Bufenter *.php set comments=sl:/*,mb:\ *,elx:*/
au Bufenter *.c,*.h set comments=sl:/*,mb:\ *,elx:*/
set fileencodings=utf-8
set backspace=indent,eol,start
filetype indent on
language en_US
set autowrite

au BufEnter *.hs set formatprg=stylish-haskell 

function WriteCFile()
    put ='#include<stdio.h>'
    put =''
    put ='int main()'
    put ='{'
    put ='    return 0;'
    put ='}'
endfunction

au BufNewFile *.c call WriteCFile()

" python
let g:python3_host_prog = '/usr/local/bin/python3'

" Plugins, yea that many
call plug#begin()
Plug 'noahfrederick/vim-laravel'
Plug 'jwalton512/vim-blade'
Plug 'simeji/winresizer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'KabbAmine/vCoolor.vim'
Plug 'mattn/emmet-vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
" Plug 'preservim/tagbar'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Plug 'andweeb/presence.nvim'
" Plug 'akinsho/bufferline.nvim'
Plug 'leafOfTree/vim-matchtag'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'morhetz/gruvbox'
" Plug 'glepnir/dashboard-nvim'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
" Plug 'tobyS/pdv'
" Plug 'tobyS/vmustache'
" Plug 'SirVer/ultisnips'
Plug 'editorconfig/editorconfig-vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'kchmck/vim-coffee-script'
Plug 'vim-scripts/TeTrIs.vim'
" Plug 'godlygeek/tabular'
Plug 'michaeldyrynda/carbon'
" Plug 'preservim/vim-markdown'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'TENMAJKL/phpactor-telescope'
Plug 'vim-vdebug/vdebug'
Plug 'purescript-contrib/purescript-vim'
Plug 'mpickering/hlint-refactor-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'puremourning/vimspector'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'dhruvasagar/vim-table-mode'
Plug 'github/copilot.vim'
call plug#end()

hi Normal guibg=NONE ctermbg=NONE

" Emmet
let g:user_emmet_leader_key=','

nmap s :w<cr>
vmap <C-c> "*y<cr>

map ~~ ZZ

nmap ## :VCoolor<cr>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap /* /**/<left><left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
autocmd Bufenter *.py inoremap #= =================
autocmd Bufenter *.py inoremap ## """""" <left><left><left><left>

nmap bbn bnext
nmap bbp bprevious

imap jk <esc>

command PT PhpactorTelescope

let g:vim_matchtag_enable_by_default = 1
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.juice,*.lemon.php,*vue'

" Telescope
lua << EOF
require('telescope').setup{
defaults = {
    file_ignore_patterns = {"vendor", "node_modules"}
    }
}
EOF

nmap ff <cmd>Telescope find_files<cr>
nmap fg <cmd>Telescope live_grep<cr>
nmap fb <cmd>Telescope buffers<cr>
nmap fh <cmd>Telescope help_tags<cr>

" Presence
" let g:presence_blacklist = [$HOME."/minehub/web", $HOME."/minehub/web-next"]
" let g:presence_neovim_image_text = "Vi, Vim, Neovim and emacs are only editors."
" let g:presence_editing_text = "📄 %s"
" let g:presence_file_explorer_text  = "📁 %s"
" let g:presence_workspace_text = "📁 %s"

tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * setlocal nonumber norelativenumber

nnoremap <silent>tn :BufferLineCycleNext<CR>
nnoremap <silent>tp :BufferLineCyclePrev<CR>
nnoremap <silent> gb :BufferLinePick<CR>

set termguicolors

" Bufferline, nice tabs

" lua << EOF
" require("bufferline").setup{
"     options = {
"         offsets = {{filetype = "NvimTree", text = "File Explorer" , text_align = "left"}},   
"     }
" }
" EOF

" Renamer
nnoremap rn <cmd>lua require('renamer').rename()<cr>

" cursros
let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"] = '<S-Down>'
let g:VM_maps["Add Cursor Up"] = '<S-Up>'

" testing
nmap <silent>tt :TestNearest<CR>

" let g:pdv_template_dir = $HOME . '/.config/nvim/plugged/pdv/templates_snip'
" nnoremap db :call pdv#DocumentWithSnip()<cr>

" dashboard
let g:dashboard_default_executive ='telescope'

let g:dashboard_custom_header =<< EOF
    ⠀⠀⠀⣚⣛⣉⣙⣛⣛⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⠀⢰⢿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡌⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⠀⡎⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣸⣿⣿⣿⣿⣿⣿⣿⠟⣛⣉⣉⣛⣛⠻⠿⢿
    ⠀⣇⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⣉⣉⡉⠛⠛⠿⢿⡏⣼⠿⢿⣿⣿⣿⣿⣷⣶
    ⣄⠻⢿⣿⣿⣿⣿⣿⣿⣿⡿⢋⣨⣍⣙⡻⣿⣶⣤⣄⢁⡏⠀⢸⣿⣿⣿⣿⣿⣿
    ⣿⣷⣶⣶⣤⣤⣤⣤⣤⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⡇⣠⣾⣿⣿⣿⣿⣿⣿
    ⣿⣿⡟⠋⣩⣥⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠻⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣧⠀⠀⠀⠈⠉⠙⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣬⡙⠻⣿⣿⣿⣿
    ⣿⣿⣿⣧⣄⠀⠀⠀⠀⠀⠀⠈⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣬⣍⣛
    ⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⣿⣷⣄⣀⠀⠀⠀⠀⢀⣠⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
EOF

lua << EOF
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

EOF

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" tab thing
au Bufenter dashboard let g:indentLine_enabled = 0

let g:haskell_classic_highlighting=1

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


colorscheme gruvbox
