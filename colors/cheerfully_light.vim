" Vim cheerfully dark colorscheme
" " Author: Jorge Herrera <jherreras@gmail.com>
" " Maintainer: Jorge Herrera <jherreras@gmail.com>
" " Notes:

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "cheerfully_light"
let colors_name = "cheerfully_light"


" Color reference:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

" Palette reference (as cterm codes) - Try to stick to these colors
" light-green  : 70
" light-green2 : 106
" green        : 22
" yellow       : 94
" orange       : 166
" blue         : 33
" red          : 160
" light-blue   : 75
" purple       : 99
" gray         : 241



" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------

" Edit window
call cheerfully#SetHi("Normal",          { 'bg': 255, 'fg': 236})
call cheerfully#SetHi("Cursor",          { 'bg':  34, 'fg': 236, 'usenone': 1})
call cheerfully#SetHi("LineNr",          { 'bg': 254, 'fg': 243})
call cheerfully#SetHi("EndOfBuffer",     { 'bg': 255, 'fg': 241})
call cheerfully#SetHi("CursorLine",      { 'bg': 254, 'usenone': 1})
call cheerfully#SetHi("CursorColumn",    { 'bg': 253})
call cheerfully#SetHi("CursorLineNr",    { 'fg': 34})
call cheerfully#SetHi("ColorColumn",     { 'bg': 252})
call cheerfully#SetHi("Visual",          { 'bg': 28, 'fg': 15, 'usenone': 1})

" Gutter
call cheerfully#SetHi("FoldColumn",      { 'bg': 254, 'fg': 243})
call cheerfully#SetHi("Folded",          { 'bg': 252, 'fg': 241})
call cheerfully#SetHi("SignColumn",      { 'bg': 254, 'fg': 243})

" Window / Tabs
call cheerfully#SetHi("VertSplit",       { 'bg': 254, 'fg': 28, 'usenone': 1})
call cheerfully#SetHi("TabLine",         { 'bg': 22, 'fg': 236})
call cheerfully#SetHi("TabLineFill",     { 'bg': 254, 'fg': 236, 'usenone': 1})
call cheerfully#SetHi("TabLineSel",      { 'bg': 28, 'fg': 254})

" File Navigation / Searching
call cheerfully#SetHi("Search",          { 'bg': 214, 'fg': 236})
call cheerfully#SetHi("IncSearch",       { 'bg': 34, 'fg': 254})
call cheerfully#SetHi("Directory",       { 'fg': 33, 'usenone': 1})

" Autocomplete menu
call cheerfully#SetHi("Pmenu",           { 'bg': 241, 'fg': 0})
call cheerfully#SetHi("PmenuSel",        { 'bg': 22, 'fg': 70})

" Wildmenu/bufferline
call cheerfully#SetHi("WildMenu",        { 'bg': 34, 'fg': 154, 'usenone': 1})
call cheerfully#SetHi("StatusLine",      { 'bg': 28, 'fg': 251, 'usenone': 1})
call cheerfully#SetHi("StatusLineNC",    { 'bg': 34, 'fg': 154, 'usenone': 1})

call cheerfully#SetHi("SpellBad",        { 'bg': 125, 'fg': 230})
call cheerfully#SetHi("MatchParen",      { 'bg': 214, 'fg': 241})



" ----------------------------------------------------------------------------
" SYNTAX
" ----------------------------------------------------------------------------

" Standard vim groups (see :help group-name)
" Really, type :help group-name, you'll see the color scheme in action!)
call cheerfully#SetHi("Comment", {'fg': 247})

call cheerfully#SetHi("Constant", {'fg': 164})
call cheerfully#SetHi("String", {'fg': 166})
hi   link   Character    String
call cheerfully#SetHi("Float", {'fg': 33})
hi   link   Number          Float
hi   link   Boolean         Float

call cheerfully#SetHi("Identifier", {'fg': 160})
" hi   link         Function        Identifier


call cheerfully#SetHi("Statement", {'fg': 70})
" cheerfully#SetHi("Conditional", {})
" cheerfully#SetHi("Repeat", {})
" cheerfully#SetHi("Label", {})
" cheerfully#SetHi("Operator", {})
" cheerfully#SetHi("Keyword", {})
" cheerfully#SetHi("Exception", {})

call cheerfully#SetHi("PreProc", {'fg': 94})
" cheerfully#SetHi("PreProc", {})
" cheerfully#SetHi("Include", {})
" cheerfully#SetHi("Define", {})
" cheerfully#SetHi("Macro", {})
" cheerfully#SetHi("PreCondit", {})

call cheerfully#SetHi("Type", {'fg': 106})
" cheerfully#SetHi("StorageClass", {})
" cheerfully#SetHi("Structure", {})
" cheerfully#SetHi("Typedef", {})

call cheerfully#SetHi("Special", {'fg': 99})
" cheerfully#SetHi("SpecialChar", {})
" cheerfully#SetHi("Tag", {})
" cheerfully#SetHi("Delimiter", {})
" cheerfully#SetHi("SpecialComment", {})
" cheerfully#SetHi("Debug", {})

call cheerfully#SetHi("Underlined", {'fg': 94})

" cheerfully#SetHi("Ignore", {})

"  palette red is too bright for background
call cheerfully#SetHi("Error", {'bg': 160})

call cheerfully#SetHi("Todo", {'bg': 178, 'fg': 52})

" ------------------------
"  LANGUAGE SPECIFIC
" ------------------------

" Python
hi  link pythonInclude    Type
hi  link pythonStatement  Type
hi  link pythonDecoratorName pythonDecorator
hi  link pythonBuiltin    PreProc
" hi   pythonExceptions   guifg=#ffff00     ctermfg=226
" hi   link               pythonDecorator   Function

" C/C++

" Vim
" hi   link      vimHiCtermFgBg  Normal
" hi   link      vimHiCterm      vimHiCtermFgBg
" hi   link      vimHiGuiFgBg    vimHiCtermFgBg
" hi   link      vimGroup        Include
" hi   link      vimHiGroup      vimGroup
" hi   link      vimHiGuiRgb     Operator
" hi   link      vimHiNmbr       Operator
hi   link      vimVar    Type

" Markdown
hi   link      htmlH1          Special
call cheerfully#SetHi("mkdCode", {'bg': 237, 'fg': 94})



" ------------------------
"  CUSTOM ONES
" ------------------------

" Buffer Line
"
" By default, vim-bufferline/vim-airline integration uses
" let g:bufferline_active_highlight = 'StatusLineNC'
" let g:bufferline_inactive_highlight = 'StatusLine'
"
" to highlight buffer labels in airline. I prefer to use my own custom ones:
" let g:bufferline_active_highlight = 'ActiveBuffer'
" let g:bufferline_inactive_highlight = 'InactiveBuffer'
"
" Here I define their highlight colors
call cheerfully#SetHi("ActiveBuffer", {'bg': 238, 'fg': 15, 'usenone': 1})
call cheerfully#SetHi("InactiveBuffer", {'bg': 238, 'fg': 241, 'usenone': 1})

" NOTE: these bufferline highlight groups can be overriden in the airline
" theme, allowing to change highlight depending on the mode
