
" Plugins vim-plug
call plug#begin()

Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'lifepillar/vim-solarized8'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Editor Config
set termguicolors
set smartindent
set relativenumber
set smartcase
set signcolumn=yes
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

" Theme Config
let g:airline_theme='solarized'
let g:solarized_termtrans=1
set background=dark
colorscheme solarized8
