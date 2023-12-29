-- ┌───────────────────────────────────────────────────┐
-- │░█▀█░█░█░▀█▀░█▀█▀█░░░░░░░░░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀░│
-- │░█░█░█░█░░█░░█░▀░█░░░░▀░░░░█░░░█░█░█░█░█▀▀░░█░░█░█░│
-- │░▀░▀░░▀░░▀▀▀░▀░░░▀░░░░▀░░░░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀░│
-- │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
-- │░░░░░░░░░░░░Brent░Matthys░on░01-10-2023░░░░░░░░░░░░│
-- └───────────────────────────────────────────────────┘

-- set relative line numbers
vim.cmd("set nu rnu")

-- set tab with to be 2 spaces
--vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")

-- Set highlight on search
vim.o.hlsearch = false

-- Set yank buffer as clipboard
vim.cmd("set clipboard+=unnamedplus")

-- set <space> as leader key
vim.g.mapleader = ' '
vim.g.maploacalleader = ' '

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

-- Load all the plugins
-- To add a new plugin create a new file for the plugin in the 
-- plugins folder
require("lazy").setup("plugins")


