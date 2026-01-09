return {

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
       local lsps = {
          --{ "rust_analyzer" },
          --{ "gopls" },
          --{ "ts_ls" },
          --{ "cssls" },
          --{ "lua_ls" },
          --{ "hls" },
          --{
          --    "clangd",
          --    {
          --        init_options = {
          --            -- im using this standard since i want the compiler to
          --            -- know about true, false, etc - see
         --             -- https://xnacly.me/posts/2025/clangd-lsp/
         --             fallbackFlags = { '--std=c23' }
         --         },
         --     }
         -- },
         -- -- my custom sql language server
         -- {
         --     "sqleibniz",
         --     {
         --         cmd = { '/usr/bin/sqleibniz', '--lsp' },
         --         filetypes = { "sql" },
         --         root_markers = { "leibniz.lua" }
         --     }
         -- },
         { "pyright" },
         { "marksman" }
      }
      
      for _, lsp in pairs(lsps) do
          local name, config = lsp[1], lsp[2]
          vim.lsp.enable(name)
          if config then
              vim.lsp.config(name, config)
          end
      end
    end
  },

  -- Optional: UI for diagnostics
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
    config = function()
      require("trouble").setup({})
    end,
  },
}

