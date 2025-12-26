-- lua/languages/init.lua

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    require("languages.python")
  end,
})

--vim.api.nvim_create_autocmd("FileType", {
--  pattern = "go",
--  callback = function()
--    require("languages.go")
--  end,
--})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript" },
  callback = function()
    require("languages.js")
  end,
})

