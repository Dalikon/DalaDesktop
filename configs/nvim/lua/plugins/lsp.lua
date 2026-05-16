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
                  -- For PlatformIO/ESP32 projects, add a .clangd file at project root:
                  --   CompileFlags:
                  --     CompilationDatabase: .pio/build/esp32dev
                  "--query-driver=/home/*/.platformio/packages/toolchain-*/bin/*",
                },
                  init_options = {
                      fallbackFlags = { '--std=c++17' }
                  },
                  root_markers = { '.clangd', 'compile_commands.json', '.git' }
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
          if config then
              vim.lsp.config(name, config)
          end
          vim.lsp.enable(name)
      end
    end
  },
}

