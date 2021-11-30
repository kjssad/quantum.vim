local config

vim = vim or { g = {}, o = {} }

local function opt(key, default)
  key = "quantum_" .. key
  if vim.g[key] == nil then
    return default
  end
  if vim.g[key] == 0 then
    return false
  end
  return vim.g[key]
end

config = {
  comment_style = opt("italic_comments", true) and "italic" or "NONE",
  keyword_style = opt("italic_keywords", false) and "italic" or "NONE",
  function_style = opt("italic_functions", false) and "italic" or "NONE",
  variable_style = opt("italic_variables", true) and "italic" or "NONE",
  hide_end_of_buffer = opt("hide_end_of_buffer", true),
}

return config
