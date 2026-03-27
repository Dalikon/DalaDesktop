-- lua/languages/init.lua

-- Register pyright config
vim.lsp.config("pyright", require("languages.python"))

-- Register ts_ls config  
vim.lsp.config("ts_ls", require("languages.js"))

-- Then enable them (or move these to plugins/lsp.lua alongside clangd)
vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")
