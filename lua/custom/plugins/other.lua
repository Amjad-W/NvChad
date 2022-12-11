
local M = {}

M.gist = function()
  vim.g.gist_open_browser_after_post = 1
end

M.obsession = function()
  vim.api.nvim_create_user_command("SSave", "Obsess $HOME/bin/sessions/<args>.vim", { nargs = 1 })
end

return M
