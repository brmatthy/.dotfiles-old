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

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

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
