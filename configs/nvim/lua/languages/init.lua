-- lua/languages/init.lua

vim.lsp.config("pyright", require("languages.python"))
vim.lsp.config("ts_ls",   require("languages.js"))
vim.lsp.config("lua_ls",  require("languages.lua"))

vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")
vim.lsp.enable("lua_ls")
