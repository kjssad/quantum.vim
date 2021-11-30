local M = {}

function M.colorscheme()
  vim.cmd("hi clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "quantum"
  vim.o.termguicolors = true

  local template = require("quantum.template").setup()
  local util = require("quantum.util")

  local sets = {
    template.builtins,
    template.syntax,
    template.lsp,
    template.treesitter,
    template.plugins,
  }

  for _, set in ipairs(sets) do
    util.setup_template(set)
  end
end

return M
