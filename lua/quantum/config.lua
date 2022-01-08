local config = {}

config.options = {
  style = {
    comments = "italic",
    variables = "italic",
    functions = "NONE",
    keywords = "NONE",
  },
  hide_end_of_buffer = true,
}

---@param opts table user configuration
function config.set_options(opts)
  opts = opts or {}
  config.options = vim.tbl_deep_extend("force", config.options, opts)
end

return config
