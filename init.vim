set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set nowrap
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set splitright
set splitbelow
syntax enable

" - plugins
call plug#begin('~/.vim/plugged')

if exists('g:vscode')
    " load plugins only for vscode-neovim
else
    " load plugins only for native neovim

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Visual
    Plug 'gruvbox-community/gruvbox'
    Plug 'tomasiser/vim-code-dark'
    Plug 'psliwka/vim-smoothie'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-commentary'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    " IDE
    " Treesitter is very painful to maintain, closing it for now
    " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'
endif

call plug#end()

" - keys
" the leader key assignment must come before configs, because configs consumes
" leader key
let mapleader = " "

" - configs
" source common config files
    runtime! plugin-config/common/*.vim
if exists('g:vscode')
    " source config files only for vscode-neovim
    runtime! plugin-config/vscode-nvim/*.vim
else
    " source config files only for native neovim
    runtime! plugin-config/native-nvim/*.vim
endif

