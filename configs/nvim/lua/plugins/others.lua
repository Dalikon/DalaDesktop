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
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/personal",
        },
        {
          name = "work",
          path = "~/vaults/work",
        },
      },
    },
  },

{
  "rmagatti/auto-session",
  config = function()
    local nvim_tree_api = require("nvim-tree.api")

    require("auto-session").setup({
      enabled = true,
      auto_restore_enabled = true,
      auto_save_enabled = true,
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
    config = true,
  },

  {
  "ray-x/lsp_signature.nvim",
  config = function()
    require("lsp_signature").setup({
      bind = true,                -- automatically attach to LSP
      floating_window = true,     -- use a floating window
      hint_enable = true,         -- show parameter hints
      hint_prefix = " ",
      fix_pos = true,             -- keep window fixed near cursor
      padding = "",
      transparency = 20,
      toggle_key = "<M-x>",       -- optional key to toggle signature help
      handler_opts = { border = "rounded" },
        -- prevent empty signature notifications
      always_trigger = false,          -- only trigger when signature info exists
      extra_trigger_chars = { "(", "," },
      toggle_key = nil,                -- no manual toggle
    })
  end
  },
}
