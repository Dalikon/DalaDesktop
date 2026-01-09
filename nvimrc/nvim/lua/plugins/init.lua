-- Plugin manager bootstrap (lazy.nvim)
-- =========================================================

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

require("lazy").setup({
  require("plugins.ui"),
  require("plugins.lsp"),
  require("plugins.cmp"),
  require("plugins.telescope"),
  require("plugins.treesitter"),
  require("plugins.git"),
  require("plugins.others"),
  require("plugins.nvim-tree"),
}, {
  ui = {
    border = "rounded",
  },
})

