-- ┌───────────────────────────────────────────────────┐
-- │░█▀█░█░█░▀█▀░█▀█▀█░░░░░░░░░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀░│
-- │░█░█░█░█░░█░░█░▀░█░░░░▀░░░░█░░░█░█░█░█░█▀▀░░█░░█░█░│
-- │░▀░▀░░▀░░▀▀▀░▀░░░▀░░░░▀░░░░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀░│
-- │░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░│
-- │░░░░░░░░░░░░Brent░Matthys░on░01-10-2023░░░░░░░░░░░░│
-- └───────────────────────────────────────────────────┘

-- set relative line numbers
vim.cmd("set rnu")

-- require the plugins
require("plugins")

-- require the core
require("core")

-- Set highlight on search
vim.o.hlsearch = false

-- Set yank buffer as clipboard
vim.cmd("set clipboard+=unnamedplus")
