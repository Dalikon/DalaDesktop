-- =========================================================
-- Editor options
-- =========================================================

local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Scrolling / layout
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Timing
opt.updatetime = 250
opt.timeoutlen = 400

