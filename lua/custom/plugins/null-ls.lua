local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  b.code_actions.refactoring,

  -- webdev stuff
  b.formatting.prettier,
  b.formatting.rustywind, -- For tailwind
  b.code_actions.xo, -- Eslint Wrapper

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- Rust
  b.formatting.rustfmt,

  -- Other
  b.diagnostics.cfn_lint,
  b.diagnostics.sqlfluff,
  b.diagnostics.markdownlint,
  b.diagnostics.yamllint,
  b.diagnostics.jsonlint,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
