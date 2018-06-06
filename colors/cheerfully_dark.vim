" Vim cheerfully dark colorscheme
" " Author: Jorge Herrera <jherreras@gmail.com>
" " Maintainer: Jorge Herrera <jherreras@gmail.com>
" " Notes:

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "cheerfully_dark"
let colors_name = "cheerfully_dark"


" Color reference:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

" Palette reference (as cterm codes) - Try to stick to these colors
" dark-green   : 70
" light-green  : 148
" green        : 28
" yellow       : 220
" orange       : 214
" blue         : 39
" red          : 196
" light-blue   : 81
" purple       : 105
" gray         : 246
" magenta:     : 162



" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------

" Edit window
call cheerfully#SetHi("Normal",          { 'bg': 233, 'fg': 255})
call cheerfully#SetHi("Cursor",          { 'bg':  34, 'fg': 255})
call cheerfully#SetHi("LineNr",          { 'bg':   0, 'fg': 244})
call cheerfully#SetHi("EndOfBuffer",     { 'bg': 233, 'fg': 246})
call cheerfully#SetHi("CursorLine",      { 'bg': 234, 'usenone': 1})
call cheerfully#SetHi("CursorColumn",    { 'bg': 234})
call cheerfully#SetHi("CursorLineNr",    { 'fg': 220})
call cheerfully#SetHi("ColorColumn",     { 'bg': 235})
call cheerfully#SetHi("Visual",          { 'bg': 70, 'fg': 15, 'usenone': 1})

" Gutter
call cheerfully#SetHi("FoldColumn",      { 'bg': 0, 'fg': 244})
call cheerfully#SetHi("Folded",          { 'bg': 235, 'fg': 246})
call cheerfully#SetHi("SignColumn",      { 'bg': 0, 'fg': 244})

" Window / Tabs
" NeoVim has a reversed interpretation of BG and FG than vim
call cheerfully#SetHi("VertSplit",       { 'bg': 0, 'fg': 70, 'usenone': 1})
if has('nvim')
  call cheerfully#SetHi("VertSplit",     { 'bg': 70, 'fg': 0, 'usenone': 1})
endif
call cheerfully#SetHi("TabLine",         { 'bg': 28, 'fg': 255})
call cheerfully#SetHi("TabLineFill",     { 'bg': 0, 'fg': 255, 'usenone': 1})
call cheerfully#SetHi("TabLineSel",      { 'bg': 70, 'fg': 255})

" File Navigation / Searching
call cheerfully#SetHi("Search",          { 'bg': 178, 'fg': 233})
call cheerfully#SetHi("IncSearch",       { 'bg': 34, 'fg': 255})
call cheerfully#SetHi("Directory",       { 'fg': 39, 'usenone': 1})

" Autocomplete menu
call cheerfully#SetHi("Pmenu",           { 'bg': 246, 'fg': 0})
call cheerfully#SetHi("PmenuSel",        { 'bg': 28, 'fg': 76})

" Wildmenu/bufferline
call cheerfully#SetHi("WildMenu",        { 'bg': 70, 'fg': 118, 'usenone': 1})
" call cheerfully#SetHi("StatusLine",      { 'bg': 28, 'fg': 249, 'usenone': 1})
call cheerfully#SetHi("StatusLine",      { 'bg': 0, 'fg': 70, 'usenone': 1})  " good idea to keep it similar to VertSplit
call cheerfully#SetHi("StatusLineNC",    { 'bg': 70, 'fg': 118, 'usenone': 1})

" call cheerfully#SetHi("SpellBad",        { 'bg': 162, 'fg': 230})
call cheerfully#SetHi("SpellBad",        { 'fg': 162})
call cheerfully#SetHi("SpellCap",        { 'bg': 208, 'fg': 232})
call cheerfully#SetHi("MatchParen",      { 'bg': 214, 'fg': 0})

" Special characters (the ones shown with `:set list`)
" The "NonText" highlighting will be used for "eol", "extends" and
" precedes".  "SpecialKey" for "nbsp", "tab" and "trail".
call cheerfully#SetHi("SpecialKey",      { 'fg': 162})
call cheerfully#SetHi("NonText",         { 'fg': 162})

" NERDTree customizations
call cheerfully#SetHi("nerdtreeFileExtensionLabel_sh", { 'fg': 214})


" ----------------------------------------------------------------------------
" SYNTAX
" ----------------------------------------------------------------------------

" Standard vim groups (see :help group-name)
" Really, type :help group-name, you'll see the color scheme in action!)
call cheerfully#SetHi("Comment", {'fg': 67})

call cheerfully#SetHi("Constant", {'fg': 163})
call cheerfully#SetHi("String", {'fg': 214})
hi   link   Character    String
call cheerfully#SetHi("Float", {'fg': 39})
hi   link   Number          Float
hi   link   Boolean         Float

call cheerfully#SetHi("Identifier", {'fg': 196})
" hi   link         Function        Identifier


call cheerfully#SetHi("Statement", {'fg': 70})
" cheerfully#SetHi("Conditional", {})
" cheerfully#SetHi("Repeat", {})
" cheerfully#SetHi("Label", {})
" cheerfully#SetHi("Operator", {})
" cheerfully#SetHi("Keyword", {})
" cheerfully#SetHi("Exception", {})

call cheerfully#SetHi("PreProc", {'fg': 220})
" cheerfully#SetHi("PreProc", {})
" cheerfully#SetHi("Include", {})
" cheerfully#SetHi("Define", {})
" cheerfully#SetHi("Macro", {})
" cheerfully#SetHi("PreCondit", {})

call cheerfully#SetHi("Type", {'fg': 148})
" cheerfully#SetHi("StorageClass", {})
" cheerfully#SetHi("Structure", {})
" cheerfully#SetHi("Typedef", {})

call cheerfully#SetHi("Special", {'fg': 105})
" cheerfully#SetHi("SpecialChar", {})
" cheerfully#SetHi("Tag", {})
" cheerfully#SetHi("Delimiter", {})
" cheerfully#SetHi("SpecialComment", {})
" cheerfully#SetHi("Debug", {})

call cheerfully#SetHi("Underlined", {'fg': 220})

" cheerfully#SetHi("Ignore", {})

"  palette red is too bright for background
call cheerfully#SetHi("Error", {'bg': 124})

call cheerfully#SetHi("Todo", {'bg': 81, 'fg': 0})


" ------------------------
"  SYNTASTIC SPECIFIC
" ------------------------

highlight link SyntasticError   SpellBad
highlight link SyntasticWarning SpellCap


" ------------------------
"  LANGUAGE SPECIFIC
" ------------------------

" Python
call cheerfully#SetHi("pythonFunction", {'fg': 196, 'usenone': 1})
hi  link pythonInclude    Type
hi  link pythonStatement  Type
hi  link pythonDecoratorName pythonDecorator
hi  link pythonBuiltin    PreProc
" hi   pythonExceptions   guifg=#ffff00     ctermfg=226
" hi   link               pythonDecorator   Function
hi  link pythonTodo       Todo

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
call cheerfully#SetHi("mkdCode", {'bg': 237, 'fg': 220})

" Javascript
hi   link      jsGlobalObjects PreProc

" CSS
hi   link      cssColor        Float
hi   link      cssUIAttr       PreProc
hi   link      cssCommonAttr   PreProc

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
call cheerfully#SetHi("InactiveBuffer", {'bg': 238, 'fg': 246, 'usenone': 1})

" NOTE: these bufferline highlight groups can be overriden in the airline
" theme, allowing to change highlight depending on the mode
