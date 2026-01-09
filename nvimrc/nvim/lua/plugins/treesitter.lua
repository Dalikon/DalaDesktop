return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = { "python", "go", "javascript", "lua" },
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = { enable = true },
        playground = { enable = true },
      })
    end,
  },
}

