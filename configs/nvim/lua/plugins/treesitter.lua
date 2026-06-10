return {
  {
    "romus204/tree-sitter-manager.nvim",
    config = function()
      require("tree-sitter-manager").setup({
        ensure_installed = { "python", "go", "javascript", "typescript", "lua", "cpp", "c", "markdown", "markdown_inline", "bash" },
        highlight = true,
        auto_install = false,
      })
    end,
  },
}
