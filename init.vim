" =======================
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
set number
set cursorline
set spell
set nowrap
set title
set shortmess+=c
set formatoptions+=r
set incsearch
set hlsearch
set mouse=a " Wait what
set fillchars+=vert:\ 
au Bufenter *.php set comments=sl:/*,mb:\ *,elx:*/
au Bufenter *.c,*.h set comments=sl:/*,mb:\ \|,elx:*/
set fileencodings=utf-8
set backspace=indent,eol,start
filetype indent on
language en_US
set autowrite

" Markdown
let g:mkdp_auto_start=1

" python
let g:python3_host_prog = '/usr/local/bin/python3'

" tree
let g:nvim_tree_auto_open = 1
let g:nvim_tree_tab_open = 1
let g:nvim_tree_icons = {
    \ 'default': 'Óėí'
    \}
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.DS_Store', 'vendor']
nnoremap <C-n> :NvimTreeToggle<CR>

" Plugins, yea that many
call plug#begin()
Plug 'noahfrederick/vim-laravel'
Plug 'jwalton512/vim-blade'
Plug 'simeji/winresizer'
Plug 'monsonjeremy/onedark.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'KabbAmine/vCoolor.vim'
Plug 'mattn/emmet-vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/tagbar'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'andweeb/presence.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'leafOfTree/vim-matchtag'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'Yggdroot/indentLine'
call plug#end()

hi Normal guibg=NONE ctermbg=NONE

" Emmet
let g:user_emmet_leader_key=','

nmap s :w<cr>
vmap <C-c> "*y<cr>

nmap ## :VCoolor<cr>

" Pure laziness
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



let g:vim_matchtag_enable_by_default = 1
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.php,*vue'

" Telescope
lua << EOF
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {"vendor", "node_modules"}
    }
}
EOF

nmap ff <cmd>Telescope find_files theme=get_dropdown<cr>
nmap fg <cmd>Telescope live_grep theme=get_dropdown<cr>
nmap fb <cmd>Telescope buffers theme=get_dropdown<cr>
nmap fh <cmd>Telescope help_tags theme=get_dropdown<cr>

" Presence
let g:presence_blacklist = [$HOME."/minehub/web", $HOME."/minehub/web-next"]
let g:presence_neovim_image_text = "Vi, Vim, Neovim and emacs are only editors."

tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * setlocal nonumber norelativenumber

nnoremap <silent>tn :BufferLineCycleNext<CR>
nnoremap <silent>tp :BufferLineCyclePrev<CR>
nnoremap <silent> gb :BufferLinePick<CR>

let g:airline_powerline_fonts = 1

set termguicolors

" Bufferline, nice tabs
lua << EOF
require("bufferline").setup{
    options = {
        offsets = {{filetype = "NvimTree", text = "File Explorer" , text_align = "left"}},    
    }
}
EOF

function Replace()
    let search = expand("<cword>")
    let replace = input("$")
    let command = ":%s/".search."/".replace
    execute command
endfunction

nmap r :call Replace()<Cr>

" ONEDARK IS BEST SCHEME CHANGE MY MIND
lua require('onedark').setup()" =======================
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
set number
set cursorline
set spell
set nowrap
set title
set shortmess+=c
set formatoptions+=r
set incsearch
set hlsearch
set mouse=a " Wait what
set fillchars+=vert:\ 
au Bufenter *.php set comments=sl:/*,mb:\ *,elx:*/
au Bufenter *.c,*.h set comments=sl:/*,mb:\ \|,elx:*/
set fileencodings=utf-8
set backspace=indent,eol,start
filetype indent on
language en_US
autocmd TextChanged,TextChangedI <buffer> silent write

" python
let g:python3_host_prog = '/usr/local/bin/python3'

" tree
let g:nvim_tree_auto_open = 1
let g:nvim_tree_tab_open = 1
let g:nvim_tree_icons = {
    \ 'default': ''
    \}
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.DS_Store', 'vendor']
nnoremap <C-n> :NvimTreeToggle<CR>

" Plugins, yea that many
call plug#begin()
Plug 'noahfrederick/vim-laravel'
Plug 'jwalton512/vim-blade'
Plug 'simeji/winresizer'
Plug 'monsonjeremy/onedark.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'KabbAmine/vCoolor.vim'
Plug 'mattn/emmet-vim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'preservim/tagbar'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'andweeb/presence.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'leafOfTree/vim-matchtag'
call plug#end()

hi Normal guibg=NONE ctermbg=NONE

" Emmet
let g:user_emmet_leader_key=','

nmap s :w<cr>
vmap <D-c> "*y<cr>

nmap ## :VCoolor<cr>

" Pure laziness
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

let g:vim_matchtag_enable_by_default = 1
let g:vim_matchtag_files = '*.html,*.xml,*.js,*.php,*vue'

" Telescope
lua << EOF
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {"vendor", "node_modules"}
    }
}
EOF

nmap ff <cmd>Telescope find_files theme=get_dropdown<cr>
nmap fg <cmd>Telescope live_grep theme=get_dropdown<cr>
nmap fb <cmd>Telescope buffers theme=get_dropdown<cr>
nmap fh <cmd>Telescope help_tags theme=get_dropdown<cr>

" Presence
let g:presence_blacklist = [$HOME."/minehub/web"]
let g:presence_neovim_image_text = "Vi, Vim, Neovim and emacs are only editors."

tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * setlocal nonumber norelativenumber

nnoremap <silent>tn :BufferLineCycleNext<CR>
nnoremap <silent>tp :BufferLineCyclePrev<CR>
nnoremap <silent> gb :BufferLinePick<CR>

let g:airline_powerline_fonts = 1

set termguicolors

" Bufferline, nice tabs
lua << EOF
require("bufferline").setup{
    options = {
        offsets = {{filetype = "NvimTree", text = "File Explorer" , text_align = "left"}},    
    }
}
EOF

" ONEDARK IS BEST SCHEME CHANGE MY MIND
lua require('onedark').setup()
