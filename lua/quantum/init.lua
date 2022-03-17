local M = {}

function M.colorscheme()
  vim.cmd("hi clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "quantum"
  vim.o.termguicolors = true

  local options = require("quantum.config").options
  local template = require("quantum.template").setup(options)

  local sets = {
    template.builtins,
    template.syntax,
    template.lsp,
    template.treesitter,
    template.others,
    template.plugins,
    options.colors,
  }

  local util = require("quantum.util")

  for _, set in ipairs(sets) do
    util.setup_template(set)
  end
end

function M.setup(opts)
  require("quantum.config").set_options(opts)
end

return M
