"
"=======================
" TEN MAJKL NEOVIM CONFIG
"
" Just neovim configuration file, my goal was to create tool better than vS cOdE that runs in TERMINAL
" Its basicaly all the time WIP
" And its mess
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
set nowrap
set title
set shortmess+=c
set formatoptions+=r
set incsearch
set hlsearch
set mouse=a " Wait what
set fillchars+=vert:\ 
au Bufenter *.php set comments=sl:/*,mb:\ *,elx:*/
au Bufenter *.c,*.h set comments=sl:/*,mb:\ *,elx:*/
set fileencodings=utf-8
set backspace=indent,eol,start
filetype indent on
language en_US
set autowrite

function WriteCFile()
    put ='#include<stdio.h>'
    put =''
    put ='int main()'
    put ='{'
    put ='  return 0;'
    put ='}'
endfunction

au BufNewFile *.c call WriteCFile()

" python
let g:python3_host_prog = '/usr/local/bin/python3'

" tree
let g:nvim_tree_auto_open = 1
let g:nvim_tree_tab_open = 1
let g:nvim_tree_icons = {
    \ 'default': '',
    \}
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.DS_Store', 'vendor']
nnoremap <C-n> :NvimTreeToggle<CR>

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
Plug 'preservim/tagbar'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'andweeb/presence.nvim'
Plug 'akinsho/bufferline.nvim'
Plug 'leafOfTree/vim-matchtag'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
call plug#end()

hi Normal guibg=NONE ctermbg=NONE

" Emmet
let g:user_emmet_leader_key=','

nmap s :w<cr>
vmap <C-c> "*y<cr>

map ~~ ZZ

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
let g:presence_editing_text = "📄 %s"
let g:presence_file_explorer_text  = "📁 %s"
let g:presence_workspace_text = "📁 %s"

tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * setlocal nonumber norelativenumber

nnoremap <silent>tn :BufferLineCycleNext<CR>
nnoremap <silent>tp :BufferLineCyclePrev<CR>
nnoremap <silent> gb :BufferLinePick<CR>

set termguicolors

" Bufferline, nice tabs
lua << EOF
require("bufferline").setup{
    options = {
        offsets = {{filetype = "NvimTree", text = "File Explorer" , text_align = "left"}},   
    }
}
EOF

colorscheme gruvbox
