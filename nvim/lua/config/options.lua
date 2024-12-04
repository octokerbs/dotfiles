-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- Tabs
opt.shiftwidth = 8 -- Size of an indent
opt.tabstop = 8 -- Number of spaces tabs count for
opt.expandtab = true -- Use spaces instead of tabs

-- Line format
opt.wrap = true
opt.textwidth = 80

-- Cursor Line
opt.cursorline = false
