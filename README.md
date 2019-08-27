![quantum.vim](https://raw.githubusercontent.com/kjssad/firefox.vim/master/img/preview.png)

A colorscheme for the GUI inspired by [Firefox DevTools](https://developer.mozilla.org/en-US/docs/Tools).

## Installation
You can use any package manager to install quantum.vim.

## Usage

```vim
set termguicolors       " enable true colors support

set background=dark     " dark theme
" set background=light  " light theme

colorscheme quantum
```

## Lightline support

```vim
let g:lightline = {
  \ 'colorscheme': 'quantum'
  \ }
```

## Warning
`quantum` works only if VIM supports `termguicolors` option. This is true for [Neovim](https://neovim.io) and VIM from 7.4.1799.
