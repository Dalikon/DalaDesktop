return{
  {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({})
    end,
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,
      })
    end
  },

  {
    "dhruvasagar/vim-table-mode",
    ft = "markdown",
  },

  {
    "dkarter/bullets.vim",
    ft = { "markdown", "text" },
  },

  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = "cd app && npm install",
    pin = true,
    config = function()
      -- Use Firefox explicitly (optional but recommended)
      vim.g.mkdp_browser = "firefox"

      -- Open preview only when you ask
      --vim.g.mkdp_auto_start = 0

      -- Auto close preview when buffer closes
      --vim.g.mkdp_auto_close = 1

      -- Refresh only on save (less noisy)
      --vim.g.mkdp_refresh_slow = 1
    end,
  },

{
  "rmagatti/auto-session",
  config = function()
    local nvim_tree_api = require("nvim-tree.api")

    require("auto-session").setup({
      --log_level = "debug",
      enabled = true,
      auto_restore = true,
      auto_save = true,
      pre_save_cmds = {
        function()
            -- Safely check if nvim-tree is loaded
            if package.loaded["nvim-tree.api"] and nvim_tree_api.tree.is_visible() then
                vim.g.nvim_tree_was_open = true
            else
                vim.g.nvim_tree_was_open = false
            end
        end
      },
      post_restore_cmds = {
        function()
            -- Only open tree if it was open before
            if vim.g.nvim_tree_was_open and package.loaded["nvim-tree.api"] then
                nvim_tree_api.tree.open()
            end
        end
      },
    })
  end
},

  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    enabled = false,
    config = function()
      require("bufferline").setup({
        options = {
          offsets = {
            { filetype = "NvimTree", text = "Files", padding = 1 }
          },
        },
      })
    end,
  },

  {
  "ray-x/lsp_signature.nvim",
  config = function()
    require("lsp_signature").setup({
      bind = true,                -- automatically attach to LSP
      floating_window = true,     -- use a floating window
      hint_enable = false,         -- show parameter hints
      hint_prefix = " ",
      fix_pos = true,             -- keep window fixed near cursor
      padding = "",
      transparency = 20,
      handler_opts = { border = "rounded" },
      always_trigger = false,          -- only trigger when signature info exists
      extra_trigger_chars = { "(", "," },
      toggle_key = nil,                -- no manual toggle
    })
  end
  },
}
