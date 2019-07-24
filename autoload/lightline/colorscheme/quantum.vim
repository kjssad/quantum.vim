let s:grey_80       = '#2a2a2e'
let s:grey_85       = '#1b1b1d'
let s:grey_90       = '#0c0c0d'
let s:grey_40       = '#c1c0c0'
let s:grey_45       = '#939293'
let s:grey_60       = '#5b595c'
let s:contrast      = '#6B89FF'
let s:bg_insert     = '#87DE74'
let s:bg_replace    = '#75BFFF'
let s:bg_visual     = '#B98EFF'


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [[s:grey_40, s:grey_90], [s:grey_45, s:grey_85]]
let s:p.normal.right    = [[s:grey_45, s:grey_85], [s:grey_45, s:grey_85]]
let s:p.normal.middle   = [[s:grey_45, s:grey_85]]
let s:p.inactive.left   = [[s:grey_60, s:grey_85]]
let s:p.inactive.right  = [[s:grey_60, s:grey_85]]
let s:p.inactive.middle = [[s:grey_60, s:grey_85]]
let s:p.insert.left     = [[s:grey_80, s:bg_insert], [s:grey_45, s:grey_85]]
let s:p.replace.left    = [[s:grey_80, s:bg_replace], [s:grey_45, s:grey_85]]
let s:p.visual.left     = [[s:grey_80, s:bg_visual], [s:grey_45, s:grey_85]]
let s:p.tabline.left    = [[s:grey_45, s:grey_80]]
let s:p.tabline.middle  = [[s:grey_45, s:grey_80]]
let s:p.tabline.right   = [[s:grey_45, s:grey_80]]
let s:p.tabline.tabsel  = [[s:contrast, s:grey_80]]

let g:lightline#colorscheme#quantum#palette = lightline#colorscheme#fill(s:p)
