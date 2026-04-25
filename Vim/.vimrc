""""""""""""""""""""""""""""""""""""""""""""""
"		PLUGINS			     "
""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'dense-analysis/ale'
Plug 'catppuccin/vim', { 'as': 'catppuccin'  }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'	"Keymappings prebuild
Plug 'ryanoasis/vim-devicons'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""
"		BUILTINS                     "
""""""""""""""""""""""""""""""""""""""""""""""
set number
set relativenumber
set termguicolors
syntax on
set autoindent
set smartindent
set hlsearch
set incsearch
set smartcase
set ruler
set wildmenu
set guicursor=n-v-c-i:block
set clipboard=unnamed
set scrolloff=999
set encoding=UTF-8
set background=light
set tabstop=4 
set shiftwidth=4
colorscheme catppuccin_mocha

""""""""""""""""""""""""""""""""""""""""""""""
"		AIRLINE			     "
""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'deus'

""""""""""""""""""""""""""""""""""""""""""""""
"		NERDTREE		     "
""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
