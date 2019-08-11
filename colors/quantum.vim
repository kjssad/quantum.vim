" vim:fdm=marker

" Initialization {{{
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "quantum"

" This function is based on one from https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
        \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg   : "NONE")
        \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg   : "NONE")
        \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp   : "NONE")
        \ "gui="     (has_key(a:style, "gui")   ? a:style.gui  : "NONE")
endfunction
" }}}

" Color Pallete {{{
if &background ==# 'dark'
  let s:foreground  = '#D7D7DB'
  let s:fg_sec      = '#C1C0C0'
  let s:fg_alt      = '#939295'
  let s:comment     = '#737373'
  let s:guides      = '#4A4A4F'
  let s:visual      = '#38383D'
  let s:background  = '#2a2a2e'
  let s:border      = '#1b1b1d'

  let s:highlight   = '#434347'
  let s:line        = '#303034'
  let s:search      = '#58585C'
  let s:virtualtext = '#4A4A4F'

  let s:keyword     = '#FF7DE9'
  let s:special     = '#75BFFF'
  let s:string      = '#6B89FF'
  let s:function    = '#87DE74'
  let s:type        = '#B98EFF'
  let s:constant    = '#6B89FF'
  let s:error       = '#EB5368'
  let s:warning     = '#FFD866'
else
  let s:foreground  = '#38383D'
  let s:fg_sec      = '#4A4A4F'
  let s:fg_alt      = '#535351'
  let s:comment     = '#737373'
  let s:guides      = '#D7D7DB'
  let s:visual      = '#DBDBDB'
  let s:background  = '#FFFFFF'
  let s:border      = '#B1B1B3'

  let s:highlight   = '#DCDCDD'
  let s:line        = '#F1F1F2'
  let s:search      = '#C4C4C6'
  let s:virtualtext = '#B1B1B3'

  let s:keyword     = '#DD00A9'
  let s:special     = '#0074E8'
  let s:string      = '#003EAA'
  let s:function    = '#058B00'
  let s:type        = '#8000D7'
  let s:constant    = '#003EAA'
  let s:error       = '#d70022'
  let s:warning     = '#A47F00'
endif

" }}}

" Highlight Groups (see `:help highlight-groups`) {{{
call s:h("ColorColumn", { "bg": s:border })
call s:h("Conceal", { "fg": s:visual })
call s:h("Cursor", { "fg": s:background, "bg": s:special })
call s:h("CursorIM", {})
call s:h("CursorColumn", { "bg": s:guides })
if &diff 
  highlight CursorLine gui=underline guifg=NONE guibg=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
elseif &background ==# 'dark'
  highlight CursorLine gui=NONE guifg=NONE guibg='#303034' cterm=NONE ctermfg=NONE ctermbg=NONE
else
  highlight CursorLine gui=NONE guifg=NONE guibg='#F1F1F2' cterm=NONE ctermfg=NONE ctermbg=NONE
endif
call s:h("Directory", { "fg": s:fg_alt })
call s:h("DiffAdd", { "bg": s:function, "fg": s:background })
call s:h("DiffChange", { "fg": s:warning, "gui": "underline" })
call s:h("DiffDelete", { "bg": s:error, "fg": s:background })
call s:h("DiffText", { "bg": s:warning, "fg": s:background })
call s:h("ErrorMsg", { "fg": s:error })
call s:h("VertSplit", { "fg": s:border })
call s:h("Folded", { "fg": s:fg_alt })
call s:h("FoldColumn", {})
call s:h("SignColumn", { "bg": s:background })
call s:h("IncSearch", { "fg": s:background, "bg": s:string })
call s:h("LineNr", { "fg": s:guides })
call s:h("CursorLineNr", { "fg": s:fg_sec })
call s:h("MatchParen", { "fg": s:foreground, "bg": s:comment, "gui": "underline" })
call s:h("ModeMsg", {})
call s:h("MoreMsg", {})
call s:h("NonText", { "fg": s:visual })
call s:h("Normal", { "fg": s:foreground, "bg": s:background })
call s:h("Pmenu", { "fg": s:fg_sec, "bg": s:visual })
call s:h("PmenuSel", { "fg": s:foreground, "bg": s:comment })
call s:h("PmenuSbar", { "bg": s:visual })
call s:h("PmenuThumb", { "bg": s:comment })
call s:h("Question", { "fg": s:constant })
call s:h("QuickFixLine", { "fg": s:background, "bg": s:string })
call s:h("Search", { "bg": s:search })
call s:h("SpecialKey", { "fg": s:guides })
call s:h("SpellBad", { "fg": s:keyword, "gui": "undercurl", "sp": s:error }) 
call s:h("SpellCap", { "fg": s:special })
call s:h("SpellLocal", { "fg": s:special })
call s:h("SpellRare", { "fg": s:special })
call s:h("StatusLine", { "fg": s:fg_alt, "bg": s:border })
call s:h("StatusLineNC", { "fg": s:guides, "bg": s:border })
call s:h("TabLine", { "fg": s:fg_alt, "bg": s:background })
call s:h("TabLineFill", { "fg": s:fg_alt, "bg": s:background })
call s:h("TabLineSel", { "fg": s:string })
call s:h("Terminal", { "fg": s:foreground, "bg": s:background })
call s:h("Title", { "fg": s:string }) 
call s:h("Visual", { "bg": s:visual })
call s:h("VisualNOS", {})
call s:h("WarningMsg", { "fg": s:warning })
call s:h("WildMenu", { "fg": s:background, "bg": s:string })
" }}}

" Syntax Groups (see `:help group-name`) {{{
call s:h("Comment", { "fg": s:comment, "gui": "italic" })
call s:h("Constant", { "fg": s:constant })
call s:h("String", { "fg": s:string })
call s:h("Character", { "fg": s:string })
call s:h("Number", { "fg": s:constant })
call s:h("Boolean", { "fg": s:constant })
call s:h("Float", { "fg": s:constant })
call s:h("Identifier", { "fg": s:foreground })
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
call s:h("Delimiter", { "fg": s:fg_alt })
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
call s:h("elixirPseudoVariable", { "fg": s:fg_sec, "gui": "italic" })
call s:h("elixirAtom", { "fg": s:special })

" Javascript
call s:h("jsFuncArgs", { "fg": s:special, "gui": "italic" })
call s:h("jsThis", { "fg": s:fg_sec, "gui": "italic" })
call s:h("jsSuper", { "fg": s:fg_sec, "gui": "italic" })
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

" HTML
hi link htmlTitle   Identifier
hi link htmlArg     Keyword
hi link htmlTag     Delimiter
hi link htmlEndTag  Delimiter
hi link htmlH1      Identifier
call s:h("htmlTagName", { "fg": s:special, "gui": "italic" })
call s:h("htmlLink", { "fg": s:function, "gui": "underline" })
"" }}}"

" Plugin Highlights {{{
" NerdTree
hi link NERDTreeOpenable    Directory
hi link NERDTreeClosable    String
hi link NERDTreeUp          Directory
hi link NERDTreeDir         Directory
hi link NERDTreeFile        Directory
hi link NERDTreeDirSlash    NonText

" VimSignify
call s:h("SignifySignAdd", { "fg": s:function })
call s:h("SignifySignChange", { "fg": s:warning })
call s:h("SignifySignDelete", { "fg": s:error })

" Vim-illuminate
call s:h("illuminatedWord", { "bg": s:highlight })

" Vim-fugitive
hi link fugitiveHash Keyword

" ALE
call s:h("ALESignColumnWithoutErrors", {})

" coc.nvim
call s:h("CocHighlightText", { "bg": s:highlight })
call s:h("CocCodeLens", { "fg": s:virtualtext })
call s:h("CocErrorHighlight", { "gui": "undercurl", "sp": s:error })
call s:h("CocWarningHighlight", { "gui": "undercurl", "sp": s:warning })
call s:h("CocInfoHighlight", { "gui": "undercurl", "sp": s:special })
call s:h("CocHintHighlight", { "gui": "undercurl", "sp": s:function })
hi link CocErrorSign Error
hi link CocWarningSign WarningMsg
hi link CocInfoSign SpecialChar
hi link CocHintSign Function
hi link CocGitAddedSign SignifySignAdd
hi link CocGitChangedSign SignifySignChange
hi link CocGitRemovedSign SignifySignDelete
call s:h("CocGitChangeRemovedSign", { "fg": s:string })

" vim-fugitive
hi link diffAdded SignifySignAdd
hi link diffRemoved SignifySignDelete
"" }}}

" Nvim Terminal {{{
if has("nvim")
  let g:terminal_color_0 = s:background
  let g:terminal_color_1 = s:error
  let g:terminal_color_2 = s:function
  let g:terminal_color_3 = s:warning
  let g:terminal_color_4 = s:special
  let g:terminal_color_5 = s:type
  let g:terminal_color_6 = s:string
  let g:terminal_color_7 = s:foreground
  let g:terminal_color_8 = s:comment
  let g:terminal_color_9 = s:keyword
  let g:terminal_color_10 = s:function
  let g:terminal_color_11 = s:warning
  let g:terminal_color_12 = s:special
  let g:terminal_color_13 = s:type
  let g:terminal_color_14 = s:string
  let g:terminal_color_15 = s:fg_alt
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
endif
" }}}"

" " Git {{{
" hi link gitcommitComment Comment
" hi link gitcommitUnmerged SignifySignDelete
" call s:h("gitcommitOnBranch", {})
" call s:h("gitcommitBranch", { "fg": s:purple })
" call s:h("gitcommitDiscardedType", { "fg": s:red })
" call s:h("gitcommitSelectedType", { "fg": s:green })
" call s:h("gitcommitHeader", {})
" hi link gitcommitUntrackedFile SignifySignAdd
" call s:h("gitcommitDiscardedFile", { "fg": s:red })
" call s:h("gitcommitSelectedFile", { "fg": s:green })
" hi link gitcommitUnmergedFile SignifySignDelete
" call s:h("gitcommitFile", {})
" call s:h("gitcommitSummary", { "fg": s:white })
" call s:h("gitcommitOverflow", { "fg": s:red })
" hi link gitcommitNoBranch gitcommitBranch
" hi link gitcommitUntracked gitcommitUntrackedFile
" hi link gitcommitDiscarded gitcommitComment
" hi link gitcommitSelected gitcommitComment
" hi link gitcommitDiscardedArrow gitcommitDiscardedFile
" hi link gitcommitSelectedArrow gitcommitSelectedFile
" hi link gitcommitUnmergedArrow gitcommitUnmergedFile
" " }}}"
