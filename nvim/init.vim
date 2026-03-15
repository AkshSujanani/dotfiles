""""""""""""""""""""""""""""""""""""""""""""""
"		PLUGINS			     "
""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'oxfist/night-owl.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'norcalli/nvim-colorizer.lua'
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
set termguicolors
set tabstop=4
set shiftwidth=4
colorscheme tokyonight-night


""""""""""""""""""""""""""""""""""""""""""""""
"		AIRLINE			     "
""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'deus'


""""""""""""""""""""""""""""""""""""""""""""""
"		TREESITTER		     "
""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require("nvim-treesitter.configs").setup({
    ensure_installed = { "javascript", "c", "lua", "vim", "json", "html", "cpp", "bash" , "css"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
})
EOF

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
nnoremap <C-l> :LazyGit<CR>

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
