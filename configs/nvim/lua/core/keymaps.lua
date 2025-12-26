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


