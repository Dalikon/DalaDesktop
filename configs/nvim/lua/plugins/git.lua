return {
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    config = function()
      local gs = require("gitsigns")
      gs.setup({})

      local map = vim.keymap.set
      map("n", "]h", gs.next_hunk,               { desc = "Next hunk" })
      map("n", "[h", gs.prev_hunk,               { desc = "Prev hunk" })
      map("n", "<leader>hs", gs.stage_hunk,      { desc = "Stage hunk" })
      map("n", "<leader>hr", gs.reset_hunk,      { desc = "Reset hunk" })
      map("n", "<leader>hp", gs.preview_hunk,    { desc = "Preview hunk" })
      map("n", "<leader>hb", gs.blame_line,      { desc = "Blame line" })
      map("n", "<leader>hd", gs.diffthis,        { desc = "Diff this file" })
    end,
  },
}

