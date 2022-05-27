local palette = vim.g.quantum_variant or vim.o.background
local c = require("quantum.palette").get_palette(palette)
local quantum = {}

quantum.normal = {
  a = { fg = c.fg_sec, bg = c.border, gui = "bold" },
  b = { fg = c.fg_alt, bg = c.bg_alt },
  c = { fg = c.fg_alt, bg = c.bg_dark },
}

quantum.insert = {
  a = { fg = c.bg, bg = c.ui_green, style = "bold" },
  b = { fg = c.ui_green, bg = c.bg_alt },
}

quantum.visual = {
  a = { fg = c.bg, bg = c.ui_cyan, style = "bold" },
  b = { fg = c.ui_cyan, bg = c.bg_alt },
}

quantum.replace = {
  a = { fg = c.bg, bg = c.ui_red, style = "bold" },
  b = { fg = c.ui_red, bg = c.bg_alt },
}

quantum.command = {
  a = { fg = c.bg, bg = c.ui_yellow, style = "bold" },
  b = { fg = c.ui_yellow, bg = c.bg_alt },
}

quantum.inactive = {
  a = { fg = c.comment, bg = c.bg_dark },
  b = { fg = c.comment, bg = c.bg_dark },
  c = { fg = c.comment, bg = c.bg_dark },
}

return quantum
