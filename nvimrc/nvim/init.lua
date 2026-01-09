vim.g.mapleader = ","
vim.g.maplocalleader = ","

require("core.options")
require("core.keymaps")
require("core.autocmds")
require("core.dashboard")

require("plugins")

require("languages")
--require("languages.python")
--require("languages.js")

-- Safety marker so you always know which config is active
vim.notify("Using nvim-dala config", vim.log.levels.INFO)

