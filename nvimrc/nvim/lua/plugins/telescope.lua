return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local actions = require("telescope.actions")
      require("telescope").setup({
        defaults = {
          file_ignore_patterns = { "node_modules", ".git/" },
        },
        pickers = {
          find_files = {
            mappings = {
              i = { ["<CR>"] = actions.select_tab },
              n = { ["<CR>"] = actions.select_tab },
            },
          },
          git_files = {
            mappings = {
              i = { ["<CR>"] = actions.select_tab },
              n = { ["<CR>"] = actions.select_tab },
            },
          },
        },
      })

      vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
      vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
      vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
      vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
    end,
  },
}

