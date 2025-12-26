-- lua/languages/js.lua
local lsp = _G.LSP_COMMON
if not lsp then return end

lsp.lspconfig.tsserver.setup({
  on_attach = lsp.on_attach,
  capabilities = lsp.capabilities,
})

