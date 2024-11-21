-- Set mapleader and maplocalleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Show line numbers
vim.opt.number = true
-- Window splitting
vim.opt.splitbelow = true
vim.opt.splitright = true
-- Turn <tab> characters into 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
-- Set scrolloff to 10 lines
vim.opt.scrolloff = 10
-- Allow cursor to be placed on empty whitespace in visual block mode
vim.opt.virtualedit = "block"
-- Allow neovim to use terminal emulator colors
vim.opt.termguicolors = true
-- Clipboard
vim.opt.clipboard = "unnamedplus"
