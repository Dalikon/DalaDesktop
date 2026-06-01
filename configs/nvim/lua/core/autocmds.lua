-- =========================================================
-- Autocommands
-- =========================================================

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight yanked text
augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group = "YankHighlight",
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})

--autocmd("VimEnter", {
--  callback = function()
--    if vim.fn.argc() == 0 then
--      require("nvim-tree.api").tree.open()
--    end
--  end
--})

--autocmd("BufReadPost", {
--  callback = function(data)
--    local api = require("nvim-tree.api")
--    api.tree.open()
--  end,
--})

--autocmd("CursorHold", {
--  callback = function()
--    vim.diagnostic.open_float(nil, {
--      focus = false,
--      scope = "cursor",
--      border = "rounded",
--    })
--  end,
--})
autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focus = false,
      scope = "line",
      border = "rounded",
      header = "",
      prefix = "",
      close_events = {
        "BufLeave",
        "CursorMoved",
        "InsertEnter",
        "FocusLost",
      },
    })
  end,
})

autocmd("FileType", {
  pattern = "yaml",
  callback = function()
    vim.opt_local.cursorcolumn = true
  end,
})

autocmd("FileType", {
  pattern = { "cpp", "c" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
  end,
})

vim.api.nvim_create_user_command("Format", function()
  vim.lsp.buf.format()
end, { desc = "Format current file" })

