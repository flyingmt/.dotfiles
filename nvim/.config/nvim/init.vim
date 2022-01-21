" --- General 

let mapleader = " "

set termguicolors
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=1
set relativenumber
set signcolumn=yes
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a


" --- Plugins

call plug#begin('~/.config/nvim/plugged')

" General
Plug 'kyazdani42/nvim-web-devicons'                 " Devicons
Plug 'nvim-lualine/lualine.nvim'                    " Status line (Bottom)
Plug 'akinsho/bufferline.nvim'                      " Buffers (Top, To close tab : Space + q)
Plug 'machakann/vim-highlightedyank'                " Highlight yanked text
Plug 'kyazdani42/nvim-tree.lua'                     " File explorer (Space + n)
Plug 'ap/vim-css-color'				                " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes'	            " Retro Scheme

" Lsp
Plug 'neovim/nvim-lspconfig'     
"Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" Snippet completion source for nvim-cmp
Plug 'hrsh7th/cmp-vsnip'

" Other usefull completion sources
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'

" Snippet engine
Plug 'hrsh7th/vim-vsnip'

" To enable more of the features of rust-analyzer, such as inlay hints and more!
Plug 'simrat39/rust-tools.nvim'
" Svelte 
Plug 'evanleck/vim-svelte', {'branch': 'main'}

" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'

" Telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

lua require('flyingmt')

" --- Colors

set background=dark
colorscheme jellybeans

" --- Remaps

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
nnoremap <silent><leader>[ :BufferLineCyclePrev<Cr>
nnoremap <silent><leader>] :BufferLineCycleNext<Cr>
nnoremap <silent><leader>q :bdelete<Cr>

" Save
nnoremap <silent> <C-S> :w<cr>

" --- Autocommands

" Remove vert split 
" https://www.reddit.com/r/vim/comments/effwku/transparent_vertical_bar_in_vim/
" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
set fillchars=vert:\  " there is whitespace after the backslash
augroup RemoveVertSplit
    autocmd!
    autocmd BufEnter,ColorScheme * highlight VertSplit ctermfg=1 ctermbg=None cterm=None
augroup END
