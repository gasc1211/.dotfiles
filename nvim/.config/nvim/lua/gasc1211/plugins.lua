local call = vim.call
local Plug = vim.fn['plug#']

call('plug#begin')
Plug('dstein64/nvim-scrollview', { branch = 'main' })
Plug('nvim-lualine/lualine.nvim')
Plug('kyazdani42/nvim-web-devicons')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'}) 
Plug('folke/tokyonight.nvim', {branch = 'main'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('mbbill/undotree')
Plug('preservim/nerdtree')

-- LSP Support
Plug('neovim/nvim-lspconfig')             -- Required
Plug('williamboman/mason.nvim')           -- Optional
Plug('williamboman/mason-lspconfig.nvim') -- Optional

-- Autocompletion Engine
Plug 'hrsh7th/nvim-cmp'         -- Required
Plug 'hrsh7th/cmp-nvim-lsp'     -- Required
Plug 'hrsh7th/cmp-buffer'       -- Optional
Plug 'hrsh7th/cmp-path'         -- Optional
Plug 'saadparwaiz1/cmp_luasnip' -- Optional
Plug 'hrsh7th/cmp-nvim-lua'     -- Optional

--  Snippets
Plug('L3MON4D3/LuaSnip')             -- Required
Plug('rafamadriz/friendly-snippets') -- Optional

Plug('VonHeikemen/lsp-zero.nvim', {branch = 'v1.x'})

call('plug#end')
