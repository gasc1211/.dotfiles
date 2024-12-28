local plugins = {
  -- Colorscheme and Transparency
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    'tribela/transparent.nvim',
    event = 'VimEnter',
    config = true,
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
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "eslint_lsp",
        "prettierd",
        "typescript-language-server",
        "tailwindcss-language-server",
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "null-ls"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
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
  -- Discord Rich Presence
  {
    'vyfor/cord.nvim',
    build = './build || .\\build',
    event = 'VeryLazy',
    opts = {}, -- calls require('cord').setup()
  }
}
return plugins
