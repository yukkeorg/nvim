-- NVIM Options
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.title = false

-- Keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Plugins & Modules
require("config.lazy")

