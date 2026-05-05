-- =========================================================
-- Keymaps
-- =========================================================

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Quick save / quit
map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>q", "<cmd>q<CR>", opts)

-- Clear search highlight
map("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("i", "kj", "<Esc>", opts)

-- Visual mode indentation
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Disable Ex mode
map("n", "Q", "<nop>", opts)

map("n", "<leader>d", function()
    require("core.dashboard").show_dashboard()
end, { noremap = true, silent = true, desc = "Show dashboard" })

-- Toggle file explorer
map("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true, desc = "Toggle file explorer" })

-- Focus on file explorer
map("n", "<leader>f", ":NvimTreeFindFile<CR>", { noremap = true, silent = true, desc = "Focus file in explorer" })
map("n", "<leader>t", "<C-w>p", { noremap = true, silent = true, desc = "Toggle focus" })

-- Move between buffers
map("n", "<S-l>", "<cmd>bnext<CR>")
map("n", "<S-h>", "<cmd>bprev<CR>")

-- LSP keymaps (only active when LSP is attached)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local buf = args.buf
    map("n", "K",          vim.lsp.buf.hover,           { buffer = buf, desc = "Hover docs" })
    map("n", "gd",         vim.lsp.buf.definition,      { buffer = buf, desc = "Go to definition" })
    map("n", "gD",         vim.lsp.buf.declaration,     { buffer = buf, desc = "Go to declaration" })
    map("n", "gr",         vim.lsp.buf.references,      { buffer = buf, desc = "References" })
    map("n", "<leader>rn", vim.lsp.buf.rename,          { buffer = buf, desc = "Rename symbol" })
    map("n", "<leader>ca", vim.lsp.buf.code_action,     { buffer = buf, desc = "Code action" })
  end,
})
