return {

  -- -------------------------------------------------------
  -- Colorscheme (LazyVim uses TokyoNight by default)
  -- -------------------------------------------------------
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("tokyonight-night")
    end,
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 10,
    config = function()
       -- Load Onedark Vivid first (syntax)
       vim.cmd.colorscheme("onedark_vivid")

       -- Save Onedark syntax highlights
       local function copy_highlight(group)
         local g = vim.api.nvim_get_hl_by_name(group, true)
         vim.api.nvim_set_hl(0, group, g)
       end

       local syntax_groups = {
         "Comment",
         "Constant",
         "String",
         "Identifier",
         "Function",
         "Statement",
         "Conditional",
         "Repeat",
         "Operator",
         "Type",
         "Keyword",
       }

       local onedark_syntax = {}
       for _, g in ipairs(syntax_groups) do
         onedark_syntax[g] = vim.api.nvim_get_hl_by_name(g, true)
       end

       -- Now load Kanagawa Dragon (background, Normal, floats)
       vim.cmd.colorscheme("kanagawa-dragon")

       -- Restore Onedark syntax groups
       for group, hl in pairs(onedark_syntax) do
         vim.api.nvim_set_hl(0, group, hl)
       end
    end,
  },


  {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 101,
    config = function()
      vim.cmd.colorscheme("onedark_vivid")
    end,
  },


  -- -------------------------------------------------------
  -- Statusline (clean & modern)
  -- -------------------------------------------------------
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "onedark",
          section_separators = "",
          component_separators = "",
          globalstatus = true,
        },
      })
    end,
  },

  -- -------------------------------------------------------
  -- Icons (used by many plugins)
  -- -------------------------------------------------------
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- -------------------------------------------------------
  -- Better diagnostics UI
  -- -------------------------------------------------------
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("trouble").setup({
        use_diagnostic_signs = true,
      })
    end,
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },

  -- -------------------------------------------------------
  -- Notifications (nice but optional)
  -- -------------------------------------------------------
  {
    "rcarriga/nvim-notify",
    config = function()
      local notify = require("notify")
      notify.setup({
        render = "compact",
        timeout = 1500,
        stages = "fade",
        background_colour = "#000000",
        fps = 60,
      })

      vim.notify = notify
    end,
  },

}

