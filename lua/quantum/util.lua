local util = {}

---@param set table set of highlight groups
function util.setup_template(set)
  for group, properties in pairs(set) do
    vim.api.nvim_set_hl(0, group, properties)
  end
end

return util
