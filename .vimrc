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
au Bufenter *.php set comments=sl:/*,mb:\ *,elx:*/
au Bufenter *.c,*.h set comments=sl:/*,mb:\ \|,elx:*/
set fileencodings=utf-8
filetype indent on
language en_US

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.lemon.php$'] = '🍋'

autocmd BufWinEnter * NERDTree

let NERDTreeShowHidden=1
set wildignore+=*.pyc,*.swp,.DS_STORE
let NERDTreeRespectWildIgnore=1

set backspace=indent,eol,start

call plug#begin()
Plug 'noahfrederick/vim-laravel'
Plug 'jwalton512/vim-blade'
Plug 'simeji/winresizer'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'KabbAmine/vCoolor.vim'
Plug 'mattn/emmet-vim'
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'preservim/nerdtree'
call plug#end()

hi Normal guibg=NONE ctermbg=NONE

let g:user_emmet_leader_key=','


nmap s :w<cr>
vmap <D-c> "*y<cr>

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

colorscheme nord
