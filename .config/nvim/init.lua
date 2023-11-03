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

-- require the plugins
require("plugins")

-- require the core
require("core")

-- Set highlight on search
vim.o.hlsearch = false

-- Set yank buffer as clipboard
vim.cmd("set clipboard+=unnamedplus")
