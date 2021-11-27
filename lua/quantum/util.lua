local util = {}

---@param group string highlight group name
---@param properties table key value pairs for GUI highlights
local function highlight(group, properties)
  local cmd

  if properties.link then
    cmd = table.concat({
      "highlight! link",
      group,
      properties.link,
    }, " ")

    vim.cmd(cmd)
    return
  end

  local gui = properties.gui and "gui=" .. properties.gui or "gui=NONE"
  local fg = properties.fg and "guifg=" .. properties.fg or "guifg=NONE"
  local bg = properties.bg and "guibg=" .. properties.bg or "guibg=NONE"
  local sp = properties.sp and "guisp=" .. properties.sp or ""

  cmd = table.concat({
    "highlight",
    group,
    fg,
    bg,
    sp,
    gui,
  }, " ")

  vim.cmd(cmd)
end

---@param set table set of highlight groups
function util.setup_template(set)
  for group, properties in pairs(set) do
    highlight(group, properties)
  end
end

return util
