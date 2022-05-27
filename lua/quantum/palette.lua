local light_palette = {
  fg = "#38383d",
  fg_sec = "#4a4a4f",
  fg_alt = "#535351",
  fg_gutter = "#d7d7db",

  bg = "#ffffff",
  bg_sec = "#f1f1f2",
  bg_alt = "#c3c3c6",
  bg_dark = "#dbdbdb",

  border = "#a9a9aa",
  bracket_match = "#939395",
  guides = "#b1b1b3",
  selection = "#b9d7fd",
  fold = "#ebf3fe",
  comment = "#737373",

  blue = "#003eaa",
  cyan = "#0074e8",
  green = "#058b00",
  magenta = "#dd00a9",
  orange = "#e84521",
  purple = "#8000d7",

  ui_cyan = "#002275",
  ui_green = "#006504",
  ui_red = "#a4000f",
  ui_yellow = "#a47f00",
  ui_purple = "#6200a4",

  bg_cyan = "#b0c7ff",
  bg_green = "#adffb0",
  bg_red = "#ffbac0",
  bg_yellow = "#ffefba",
  bg_purple = "#e3baff",

  git_yellow = "#a47f00",
  git_green = "#008ea4",
  git_red = "#ff0039",

  diff_yellow = "#ede5cc",
  diff_green = "#cce8ed",
  diff_red = "#ffccd7",
  diff_text = "#DBCC99",
}

local night_palette = {
  fg = "#d7d7db",
  fg_sec = "#c3c3c6",
  fg_alt = "#939395",
  fg_gutter = "#4a4a4f",

  bg = "#232327",
  bg_sec = "#2a2a2e",
  bg_alt = "#38383d",
  bg_dark = "#303034",

  border = "#414145",
  bracket_match = "#58585C",
  guides = "#414145",
  selection = "#393f4c",
  fold = "#2F323A",
  comment = "#737373",

  blue = "#6b89ff",
  cyan = "#75bfff",
  green = "#86de74",
  magenta = "#ff8de9",
  orange = "#fc9867",
  purple = "#b98eff",

  ui_cyan = "#48acf2",
  ui_green = "#6cca69",
  ui_red = "#f25e72",
  ui_yellow = "#ffd866",
  ui_purple = "#b058dd",

  bg_cyan = "#2a3e50",
  bg_green = "#324434",
  bg_purple = "#3f2e4b",
  bg_red = "#4c2f36",
  bg_yellow = "#4F4734",

  git_yellow = "#e0b17f",
  git_green = "#29aa84",
  git_red = "#e6668b",

  diff_yellow = "#363130",
  diff_green = "#243130",
  diff_red = "#362930",
  diff_text = "#4f443b",
}

local dark_palette = {
  fg = "#d7d7db",
  fg_sec = "#c3c3c6",
  fg_alt = "#939395",
  fg_gutter = "#4a4a4f",

  bg = "#2a2a2e",
  bg_sec = "#303034",
  bg_alt = "#38383d",
  bg_dark = "#232327",

  border = "#1b1b1d",
  bracket_match = "#58585C",
  guides = "#414145",
  selection = "#393f4c",
  fold = "#2F323A",
  comment = "#737373",

  blue = "#6b89ff",
  cyan = "#75bfff",
  green = "#86de74",
  magenta = "#ff8de9",
  orange = "#fc9867",
  purple = "#b98eff",

  ui_cyan = "#48acf2",
  ui_green = "#6cca69",
  ui_red = "#f25e72",
  ui_yellow = "#ffd866",
  ui_purple = "#b058dd",

  bg_cyan = "#2a3e50",
  bg_green = "#324434",
  bg_purple = "#3f2e4b",
  bg_red = "#4c2f36",
  bg_yellow = "#4F4734",

  git_yellow = "#e0b17f",
  git_green = "#29aa84",
  git_red = "#e6668b",

  diff_yellow = "#363130",
  diff_green = "#243130",
  diff_red = "#362930",
  diff_text = "#4f443b",
}

local M = {}

function M.get_palette(palette)
  if palette == "night" then
    return night_palette
  elseif palette == "light" then
    return light_palette
  else
    return dark_palette
  end
end

return M
