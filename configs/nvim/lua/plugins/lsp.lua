return {

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "ray-x/lsp_signature.nvim",
    },
    config = function()
       local lsps = {
          --{ "rust_analyzer" },
          --{ "gopls" },
          --{ "ts_ls" },
          --{ "cssls" },
          --{ "lua_ls" },
          --{ "hls" },
          {
              "clangd",
              {
                cmd = {
                    "clangd",
                    "--background-index",
                    "--clang-tidy",
                    "--completion-style=detailed",
                    "--query-driver=/home/*/.platformio/packages/toolchain-*/bin/*",
                  },
                  init_options = {
                        -- im using this standard since i want the compiler to
                        -- know about true, false, etc - see
                      -- https://xnacly.me/posts/2025/clangd-lsp/
                      fallbackFlags = { '--std=c++17' }
                  },
                  --root_dir = require('lspconfig.util').root_pattern('src', 'include', '.clangd')
                  root_markers = { '.clangd', 'compile_commands.json', '.git' }  -- not root_dir
              }
          },
         -- -- my custom sql language server
         -- {
         --     "sqleibniz",
         --     {
         --         cmd = { '/usr/bin/sqleibniz', '--lsp' },
         --         filetypes = { "sql" },
         --         root_markers = { "leibniz.lua" }
         --     }
         -- },
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
}

