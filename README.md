![quantum.vim](https://raw.githubusercontent.com/kjssad/firefox.vim/master/img/preview.png)

A Neovim colorscheme inspired by [Firefox DevTools](https://developer.mozilla.org/en-US/docs/Tools).

## Requirements
**Neovim 0.7.0 or later**

## Installation
You can use any package manager to install quantum.vim. 

Here is an example for [packer.nvim](https://github.com/wbthomason/packer.nvim):
```lua
use("kjssad/quantum.vim")
```

## Usage
Enable the colorscheme:

```lua
-- Lua
vim.cmd("colorscheme quantum")
```

```vim
# VimScript
colorscheme quantum
```

## Configuration

> Note: set the configuration first **BEFORE** loading the colorscheme with `colorscheme quantum`

The colorscheme comes in three variants: `dark`, a darker variant `night` and `light`.

The `light` theme will be used if:
 
```lua
vim.g.quantum_variant = "light" -- if set, this takes presendence over `vim.o.background`

-- or 
vim.o.background = "light"
```

To configure, just call:

```lua
require("quantum").setup({
  style = {
    italics = { -- whether to use italic for the following highlight groups
      comments = true,
      variables = true,
      functions = false,
      keywords = false,
    },
  },
  hide_end_of_buffer = true, -- whether to show hl-EndOfBuffer
  colors = {}, -- override specific highlight groups
  variant = "default", -- configure variant to use: default, dark, or light
})
```

## Extras
Extra color configs for **Alacritty** and **Kitty** can be found in [term](term/).

You can also use the color palette for other plugins:

```lua
local palette = require("quantum.palette").get_palette("default")
local quantum = require("quantum")

quantum.setup({
  colors = {
    Normal = { bg = palette.border },
  },
})
```
