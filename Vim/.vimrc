let mapleader = " "

""""""""""""""""""""""""""""""""""""""""""""""
"		PLUGINS			     "
""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged/')

"Linting / LSP"
"Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"COLORSCHEMES"
Plug 'haishanh/night-owl.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin'  }
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

"Other Necessities"
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
 Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
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
set tabstop=4 
set shiftwidth=4

""""""""""""""""""""""""""""""""""""""""""""""
"		COLORSCHEME                     "
""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
"let g:nightflyTransparent = v:true
let g:moonflyTransparent = 1
let g:moonflyNormalFloat = 1

colorscheme moonfly

""""""""""""""""""""""""""""""""""""""""""""""
"		AIRLINE			     "
""""""""""""""""""""""""""""""""""""""""""""""
"let g:airline_powerline_fonts = 0
"let g:airline_theme = 'deus'

""""""""""""""""""""""""""""""""""""""""""""""
"		NERDTREE		     "
""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

""""""""""""""""""""""""""""""""""""""""""""""
"		ALE		     "
""""""""""""""""""""""""""""""""""""""""""""""
"let g:ale_linters = {'c': ['gcc', 'cppcheck']}
"let g:ale_c_cc_executable = 'gcc'

""""""""""""""""""""""""""""""""""""""""""""""
"		LIGHTLINE			     "
""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'deus',
\}

""""""""""""""""""""""""""""""""""""""""""""""
"		Keymappings		     "
""""""""""""""""""""""""""""""""""""""""""""""

" Move to Next buffer
nnoremap <C-l> :bn<CR>

" Move to Previous buffer
nnoremap <C-h> :bp<CR>

" Close only the current buffer

" Confirm completion with <leader> + y
"inoremap <silent><expr> <leader>y coc#pum#visible() ? coc#pum#confirm() : \"<leader>y"

" Close the completion menu with <leader> + e
"inoremap <silent><expr> <leader>e coc#pum#visible() ? coc#pum#cancel() : \"<leader>e"

" Navigate down with <leader> + j
"inoremap <silent><expr> <leader>j coc#pum#visible() ? coc#pum#next(1) : \"<leader>j"

" Navigate up with <leader> + k
"inoremap <silent><expr> <leader>k coc#pum#visible() ? coc#pum#prev(1) : \"<leader>k"
