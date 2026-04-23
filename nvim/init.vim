let mapleader = " "

""""""""""""""""""""""""""""""""""""""""""""""
"		PLUGINS			     "
""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

"LSP SUPPORT"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"COLORSCHEMES"
Plug 'oxfist/night-owl.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

"Other Necessities"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'catgoose/nvim-colorizer.lua'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'	"Keymappings prebuild
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'branch': 'master'}
Plug 'kdheepak/lazygit.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""
"		BUILTINS                     "
""""""""""""""""""""""""""""""""""""""""""""""
set number
set relativenumber
set termguicolors
syntax enable
set autoindent
set smartindent
set guicursor=n-v-c-i:block
set clipboard=unnamedplus
set hlsearch
set incsearch
set smartcase
set ruler
set wildmenu
set scrolloff=999
set tabstop=4
set shiftwidth=4
set background=dark

""""""""""""""""""""""""""""""""""""""""""""""
"		COLORSCHEME                     "
""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require("tokyonight").setup({
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats   = "transparent",
  },
})
EOF

"lua << EOF
"require("kanagawa").setup({
"  transparent = true,
"})
"EOF

"lua << EOF
"require("gruvbox").setup({
"  transparent_mode = true,
"})
"EOF

"let g:nightflyTransparent = v:true

"let g:moonflyTransparent = v:true

colorscheme tokyonight

""""""""""""""""""""""""""""""""""""""""""""""
"		AIRLINE			     "
""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 0
let g:airline_theme = 'deus'

""""""""""""""""""""""""""""""""""""""""""""""
"		NERDTREE		     "
""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

""""""""""""""""""""""""""""""""""""""""""""""
lua require'colorizer'.setup()
""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""
"		LAZYGIT			     "
""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>l :LazyGit<CR>

""""""""""""""""""""""""""""""""""""""""""""""
"		Indentline		     "
""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require("ibl").setup {
  indent = {
    char = "│",
  },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
  }
}
EOF



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
