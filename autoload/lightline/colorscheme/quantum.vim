if &background ==# 'dark'
    let s:background    = '#2a2a2e'
    let s:border        = '#1b1b1d'
    let s:bg_alt        = '#0c0c0d'
    let s:fg_sec        = '#c1c0c0'
    let s:fg_alt        = '#939293'
    let s:inactive      = '#5b595c'
    let s:contrast      = '#75BFFF'
    let s:bg_insert     = '#87DE74'
    let s:bg_replace    = '#75BFFF'
    let s:bg_visual     = '#B98EFF'
else
    let s:background    = '#f9f9fa'
    let s:border        = '#B1B1B3'
    let s:bg_alt        = '#939395'
    let s:fg_sec        = '#4a4a4f'
    let s:fg_alt        = '#535351'
    let s:inactive      = '#737373'
    let s:contrast      = '#0074E8'
    let s:bg_insert     = '#058B00'
    let s:bg_replace    = '#0074E8'
    let s:bg_visual     = '#8000D7'
endif


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [[s:fg_sec, s:bg_alt], [s:fg_alt, s:border]]
let s:p.normal.right    = [[s:fg_alt, s:border], [s:fg_alt, s:border]]
let s:p.normal.middle   = [[s:fg_alt, s:border]]
let s:p.inactive.left   = [[s:inactive, s:border]]
let s:p.inactive.right  = [[s:inactive, s:border]]
let s:p.inactive.middle = [[s:inactive, s:border]]
let s:p.insert.left     = [[s:background, s:bg_insert], [s:fg_alt, s:border]]
let s:p.replace.left    = [[s:background, s:bg_replace], [s:fg_alt, s:border]]
let s:p.visual.left     = [[s:background, s:bg_visual], [s:fg_alt, s:border]]
let s:p.tabline.left    = [[s:fg_alt, s:background]]
let s:p.tabline.middle  = [[s:fg_alt, s:background]]
let s:p.tabline.right   = [[s:fg_alt, s:background]]
let s:p.tabline.tabsel  = [[s:contrast, s:background]]

let g:lightline#colorscheme#quantum#palette = lightline#colorscheme#fill(s:p)
