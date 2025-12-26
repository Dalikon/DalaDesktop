vim.g.mapleader = ","
vim.g.maplocalleader = ","

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("plugins")

require("core.options")
require("core.keymaps")
require("core.autocmds")
require("core.dashboard")

require("languages")
--require("languages.python")
--require("languages.js")

-- Safety marker so you always know which config is active
vim.notify("Using nvim-dala config", vim.log.levels.INFO)

