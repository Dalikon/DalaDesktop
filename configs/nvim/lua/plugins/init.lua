-- Plugin manager bootstrap (lazy.nvim)
-- =========================================================



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

