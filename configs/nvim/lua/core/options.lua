-- =========================================================
-- Editor options
-- =========================================================

local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes:1"
opt.numberwidth = 3
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

-- Misc
opt.undofile = true
opt.shada = "'100,<50,s10,h"

opt.splitright = true      -- new vertical splits open on the right (default is left, which feels backwards)
opt.splitbelow = true      -- new horizontal splits open below
opt.breakindent = true     -- wrapped lines (if you ever enable wrap) indent to match context
opt.confirm = true         -- ask to save instead of erroring on :q with unsaved changes
opt.pumheight = 10         -- limit completion popup height so it doesn't take over the screen


vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,localoptions"

opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldenable = false    -- don't fold everything on file open
opt.foldlevel = 99        -- start with everything unfolded

vim.diagnostic.config({
  signs = true,
  numhl = true,        -- show diagnostic highlight in number column
  virtual_text = false, -- disable inline text (reduces clutter)
})

if vim.env.TERM == "xterm-kitty" then
  vim.g.kitty_keyboard_protocol = 1
end
