-- ┌───────────────────────────────────────────────────────┐
-- │░█▀█░█░█░▀█▀░█▀█▀█░░░░░░░░░█▀█░█░░░█░█░█▀▀░▀█▀░█▀█░█▀▀░│
-- │░█░█░█░█░░█░░█░▀░█░░░░▀░░░░█▀▀░█░░░█░█░█░█░░█░░█░█░▀▀█░│
-- │░▀░▀░░▀░░▀▀▀░▀░░░▀░░░░▀░░░░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░│
-- │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
-- │░░░░░░░░░░░░░░Brent░Matthys░on░01-10-2023░░░░░░░░░░░░░░│
-- └───────────────────────────────────────────────────────┘

-- We use layz.nvim as package manager
-- https://github.com/folke/lazy.nvim

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins here. First add them to the lazy.nvim setup, then create there own setup
-- in a separate file in ./configs/. Finally require that file.
-- Plugins without config can just be installed.

require("lazy").setup({
  ---------------------------------------
  -- All plugins without configuration --
  ---------------------------------------

  -- Add indentation guides even on blank lines
   { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Adds git related signs to the gutter, as well as utilities for managing changes
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- plugin for coq theorem prover
  'whonore/Coqtail',
  --------------------------------
  -- Plugins with configuration --
  --------------------------------

  -- Keep the cursor centered
  'arnamak/stay-centered.nvim',
 
  -- catppuccin theme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Highlight, edit, and navigate code
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
    },
  },

  -- Set status line
  { 'nvim-lualine/lualine.nvim' },

  -- Fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
  },

  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

})

----------------------------
-- Import plugins configs --
----------------------------

-- import stay-centered config
require "plugins.configs.stay-centered"

-- import catppuccin config
require "plugins.configs.catppuccin"
vim.cmd.colorscheme 'catppuccin'

-- import treesitter config
require "plugins.configs.treesitter"

-- import autocomplete config
require "plugins.configs.nvim-cmp"

-- import lualine config
require "plugins.configs.lualine"

-- import telescope config
require "plugins.configs.telescope"

-- import lsp config
require "plugins.configs.lspconfig"
