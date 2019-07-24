![quantum.vim](https://raw.githubusercontent.com/kjssad/firefox.vim/master/img/preview.png)

A colorscheme for the GUI inspired by the dark variant of the [Firefox DevTools](https://developer.mozilla.org/en-US/docs/Tools).

## Installation
You can use any package manager to install quantum.vim.

## Usage
```VimL
set termguicolors     " enable true colors support
colorscheme quantum
```

## Lightline support
![lightline preview](https://raw.githubusercontent.com/kjssad/firefox.vim/master/img/lightline_preview.png)
```
let g:lightline = {
  \ 'colorscheme': 'quantum',
  \ }
```

## Warning
`quantum` works only if VIM supports `termguicolors` option. This is true for [Neovim](https://neovim.io) and VIM from 7.4.1799.
