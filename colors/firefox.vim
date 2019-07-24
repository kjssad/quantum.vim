" vim:fdm=marker

" Initialization {{{
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "firefox"

" This function is based on one from https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
        \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg   : "NONE")
        \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg   : "NONE")
        \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp   : "NONE")
        \ "gui="     (has_key(a:style, "gui")   ? a:style.gui  : "NONE")
        \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
        "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
        "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
endfunction
" }}}

" Color Pallete {{{
let s:grey_30   = '#d7d7db'
let s:grey_40   = '#c1c0c0'
let s:grey_45   = '#939295'
let s:grey_50   = '#737373'
let s:grey_60   = '#4a4a4f'
let s:grey_70   = '#38383d'
let s:grey_80   = '#2a2a2e'
let s:grey_85   = '#1b1b1d'

let s:highlight = '#434347'
let s:line      = '#303034'
let s:search    = '#58585c'

let s:keyword   = '#FF7DE9'
let s:special   = '#75BFFF'
let s:string    = '#6B89FF'
let s:function  = '#87DE74'
let s:type      = '#FF7DE9'
let s:constant  = '#B98EFF'
let s:error     = '#eb5368'
" }}}

" Highlight Groups (see `:help highlight-groups`) {{{
call s:h("ColorColumn", { "bg": s:grey_85 })
call s:h("Conceal", { "fg": s:grey_60 })
call s:h("Cursor", { "fg": s:grey_80, "bg": s:grey_30 })
call s:h("CursorIM", {})
call s:h("CursorColumn", { "bg": s:grey_60 })
if &diff
  call s:h("CursorLine", { "gui": "underline" })
else
  call s:h("CursorLine", { "bg": s:line })
endif
call s:h("Directory", { "fg": s:grey_45 })
call s:h("DiffAdd", { "bg": s:function, "fg": s:grey_80 })
call s:h("DiffChange", { "fg": s:special, "gui": "underline" })
call s:h("DiffDelete", { "bg": s:error, "fg": s:grey_80 })
call s:h("DiffText", { "bg": s:special, "fg": s:grey_80 })
call s:h("ErrorMsg", { "fg": s:error })
call s:h("VertSplit", { "fg": s:grey_85 })
call s:h("Folded", { "fg": s:grey_45 })
call s:h("FoldColumn", {})
call s:h("SignColumn", {})
call s:h("IncSearch", { "fg": s:grey_80, "bg": s:string })
call s:h("LineNr", { "fg": s:grey_60 })
call s:h("CursorLineNr", { "fg": s:grey_40 })
call s:h("MatchParen", { "fg": s:grey_30, "bg": s:grey_50, "gui": "underline" })
call s:h("ModeMsg", {})
call s:h("MoreMsg", {})
call s:h("NonText", { "fg": s:grey_60 })
call s:h("Normal", { "fg": s:grey_30, "bg": s:grey_80 })
call s:h("Pmenu", { "fg": s:grey_40, "bg": s:grey_60 })
call s:h("PmenuSel", { "fg": s:grey_30, "bg": s:grey_50 })
call s:h("PmenuSbar", { "bg": s:grey_60 })
call s:h("PmenuThumb", { "bg": s:grey_50 })
call s:h("Question", { "fg": s:constant })
call s:h("QuickFixLine", { "fg": s:grey_80, "bg": s:string })
call s:h("Search", { "bg": s:search })
call s:h("SpecialKey", { "fg": s:grey_60 })
call s:h("SpellBad", { "fg": s:keyword, "gui": "underline" }) 
call s:h("SpellCap", { "fg": s:special })
call s:h("SpellLocal", { "fg": s:special })
call s:h("SpellRare", { "fg": s:special })
call s:h("StatusLine", { "fg": s:grey_45, "bg": s:grey_85 })
call s:h("StatusLineNC", { "fg": s:grey_60, "bg": s:grey_85 })
call s:h("TabLine", { "fg": s:grey_45, "bg": s:grey_80 })
call s:h("TabLineFill", { "fg": s:grey_45, "bg": s:grey_80 })
call s:h("TabLineSel", { "fg": s:string })
call s:h("Terminal", { "fg": s:grey_30, "bg": s:grey_80 })
call s:h("Title", { "fg": s:string }) 
call s:h("Visual", { "bg": s:grey_70 })
call s:h("VisualNOS", {})
call s:h("WarningMsg", { "fg": s:special })
call s:h("WildMenu", { "fg": s:grey_80, "bg": s:string })
" }}}

" Syntax Groups (see `:help group-name`) {{{
call s:h("Comment", { "fg": s:grey_50, "gui": "italic" })
call s:h("Constant", { "fg": s:constant })
call s:h("String", { "fg": s:string })
call s:h("Character", { "fg": s:string })
call s:h("Number", { "fg": s:constant })
call s:h("Boolean", { "fg": s:constant })
call s:h("Float", { "fg": s:constant })
call s:h("Identifier", { "fg": s:grey_30 })
call s:h("Function", { "fg": s:function })
call s:h("Statement", { "fg": s:keyword })
call s:h("Conditional", { "fg": s:keyword })
call s:h("Repeat", { "fg": s:keyword })
call s:h("Label", { "fg": s:keyword })
call s:h("Operator", { "fg": s:keyword })
call s:h("Keyword", { "fg": s:keyword })
call s:h("Exception", { "fg": s:keyword })
call s:h("PreProc", { "fg": s:keyword })
call s:h("Include", { "fg": s:keyword })
call s:h("Define", { "fg": s:keyword })
call s:h("Macro", { "fg": s:keyword })
call s:h("PreCondit", { "fg": s:keyword })
call s:h("Type", { "fg": s:type, "gui": 'italic' })
call s:h("StorageClass", { "fg": s:type, "gui": 'italic' })
call s:h("Structure", { "fg": s:type })
call s:h("Typedef", { "fg": s:type })
call s:h("Special", { "fg": s:constant })
call s:h("SpecialChar", { "fg": s:special })
call s:h("Tag", {})
call s:h("Delimiter", { "fg": s:grey_45 })
call s:h("SpecialComment", { "fg": s:constant })
call s:h("Debug", {})
call s:h("Underlined", { "gui": "underline" })
call s:h("Ignore", {})
call s:h("Error", { "fg": s:error, "sp": s:error })
call s:h("Todo", { "fg": s:constant })
" }}}

" Language Highlights {{{
" Elixir
hi link elixirModuleDeclaration Function
hi link elixirMacroDeclaration  Function
hi link elixirAlias             Constant
call s:h("elixirPseudoVariable", { "fg": s:grey_40, "gui": "italic" })
call s:h("elixirAtom", { "fg": s:special })

" Javascript
call s:h("jsFuncArgs", { "fg": s:special, "gui": "italic" })
call s:h("jsThis", { "fg": s:grey_40, "gui": "italic" })
call s:h("jsSuper", { "fg": s:grey_40, "gui": "italic" })
hi link jsClassKeyword  Type
hi link jsGlobalObjects Type
hi link jsPrototype     Type
hi link jsArrowFunction Operator
hi def link Noise       Delimiter
" hi link jsObjectProp    Function

" Ruby
call s:h("rubySymbol", { "fg": s:special })
hi link rubyClassName   Function
hi link rubyModuleName  Function
hi link RubyConstant    Constant
"" }}}"

" Plugin Highlights {{{
" NerdTree
hi link NERDTreeOpenable    Directory
hi link NERDTreeClosable    Keyword
hi link NERDTreeUp          Directory
hi link NERDTreeDir         Directory
hi link NERDTreeFile        Directory
hi link NERDTreeDirSlash    NonText
hi link NERDTreeCurrentNode String

" VimSignify
call s:h("SignifySignAdd", { "fg": s:function })
call s:h("SignifySignChange", { "fg": s:special })
call s:h("SignifySignDelete", { "fg": s:error })

" Vim-illuminate
call s:h("illuminatedWord", { "bg": s:highlight })

" Vim-fugitive
hi link fugitiveHash Keyword

" ALE
call s:h("ALESignColumnWithoutErrors", {})
"" }}}

" Nvim Terminal {{{
if has("nvim")
  let g:terminal_color_0 = s:grey_80
  let g:terminal_color_1 = s:keyword
  let g:terminal_color_2 = s:function
  let g:terminal_color_3 = s:string
  let g:terminal_color_4 = s:special
  let g:terminal_color_5 = s:constant
  let g:terminal_color_6 = s:type
  let g:terminal_color_7 = s:grey_30
  let g:terminal_color_8 = s:grey_50
  let g:terminal_color_9 = s:keyword
  let g:terminal_color_10 = s:function
  let g:terminal_color_11 = s:string
  let g:terminal_color_12 = s:special
  let g:terminal_color_13 = s:constant
  let g:terminal_color_14 = s:type
  let g:terminal_color_15 = s:grey_45
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
endif
" }}}"

set background=dark
