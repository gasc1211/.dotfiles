return {
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  "nvim-lualine/lualine.nvim",
  "nvim-tree/nvim-web-devicons",
  "xiyaowong/transparent.nvim",
  "nvim-lua/plenary.nvim",
  {
    "nvim-telescope/telescope.nvim", 
    branch = '0.1.x',
  },
  {
    "nvim-treesitter/nvim-treesitter", 
    config = function()
      vim.cmd([[TSUpdate]])
    end,
  },
  "mbbill/undotree",
  "preservim/nerdtree",
  -- LSP Plugins
  {
    "VonHeikemen/lsp-zero.nvim", 
    branch = 'v1.x'
  },
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  -- Autocompletion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "saadparwaiz1/cmp_luasnip",
  "hrsh7th/cmp-nvim-lua",
  -- Code Snippets
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",
}
