-- =========================================================
-- Keymaps
-- =========================================================

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Quick save / quit
map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>q", "<cmd>q<CR>", opts)

-- Clear search highlight — <leader>n so <leader>h is free for git hunks
map("n", "<leader>n", "<cmd>nohlsearch<CR>", { desc = "Clear highlight" })

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

-- Manual diagnostic float (also opens automatically on CursorHold)
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Diagnostic float" })

-- Explorer (<leader>e group)
map("n", "<leader>e",  ":NvimTreeToggle<CR>",   { noremap = true, silent = true, desc = "Toggle explorer" })
map("n", "<leader>ef", ":NvimTreeFindFile<CR>",  { noremap = true, silent = true, desc = "Find file in explorer" })

-- Tab pages (<leader>t group)
map("n", "<Tab>",       "<cmd>tabnext<CR>",   { desc = "Next tab" })
map("n", "<S-Tab>",     "<cmd>tabprev<CR>",   { desc = "Prev tab" })
map("n", "<leader>tn",  "<cmd>tabnew<CR>",    { desc = "New tab" })
map("n", "<leader>tc",  "<cmd>tabclose<CR>",  { desc = "Close tab" })

-- LSP keymaps (only active when LSP is attached)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local buf = args.buf
    map("n", "K",          vim.lsp.buf.hover,                                    { buffer = buf, desc = "Hover docs" })
    map("n", "gd",         vim.lsp.buf.definition,                               { buffer = buf, desc = "Go to definition" })
    map("n", "gD",         vim.lsp.buf.declaration,                              { buffer = buf, desc = "Go to declaration" })
    map("n", "gi",         vim.lsp.buf.implementation,                           { buffer = buf, desc = "Go to implementation" })
    map("n", "gr",         vim.lsp.buf.references,                               { buffer = buf, desc = "References" })
    map("n", "<leader>rn", vim.lsp.buf.rename,                                   { buffer = buf, desc = "Rename symbol" })
    map("n", "<leader>ca", vim.lsp.buf.code_action,                              { buffer = buf, desc = "Code action" })
    map("n", "]d",         function() vim.diagnostic.jump({ count = 1 }) end,    { buffer = buf, desc = "Next diagnostic" })
    map("n", "[d",         function() vim.diagnostic.jump({ count = -1 }) end,   { buffer = buf, desc = "Prev diagnostic" })
  end,
})
