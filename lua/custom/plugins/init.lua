return {
  ["tpope/vim-surround"] = {},
  ["tpope/vim-obsession"] = {
    config = require "custom.plugins.other".obsession
  },
  ["mattn/webapi-vim"] = {},
  ["mattn/vim-gist"] = {
    config = require "custom.plugins.other".gist,
    cmd = { "Gist" },
    -- From docs: 
    -- Plugins specified in requires are removed when no active plugins require them.
    requires = "vim-webapi"
  },
  ["WhoIsSethDaniel/toggle-lsp-diagnostics.nvim"] = {},
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "lua",
        "rust",
        "html",
        "css",
        "dockerfile",
        "typescript",
        "javascript",
        "tsx",
        "python",
        "sql",
        "yaml",
        "json",
      }
    }
  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "emmet-ls",
        "json-lsp",

        -- shell
        "shfmt",
        "shellcheck",

        -- rust
        "rust-analyzer",
        "rustfmt",
      },
    },
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["simrat39/rust-tools.nvim"] = {
    ft = { "rust" },
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.rust-tools"
    end,
  },
}
