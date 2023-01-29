-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  -- "rust_analyzer",
  "yamlls",
  "jsonls",
  "eslint",
  "tsserver",
  "dockerls",
  "pylsp",
  "marksman",
  "bashls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- local omnisharp_bin = "$HOME/.local/share/nvim/mason/bin/omnisharp"
lspconfig["omnisharp"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "omnisharp" }, -- We can do this because cmd omnisharp exists in vim.env
}
