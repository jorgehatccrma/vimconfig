" Vim cheerfully dark colorscheme
" " Author: Jorge Herrera <jherreras@gmail.com>
" " Maintainer: Jorge Herrera <jherreras@gmail.com>
" " Notes:
" "    'hi' is shorthand for 'highlight'
" "    To check the meaning of the hi groups, :help 'hi'

" Color reference:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "cheerfully_light"
let colors_name = "cheerfully_light"



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


:let colorlist = {
 \   0: '#aaaaaa',  1: '#aaaaaa',  2: '#aaaaaa',  3: '#aaaaaa',
 \   4: '#aaaaaa',  5: '#800080',  6: '#008080',  7: '#c0c0c0',
 \   8: '#808080',  9: '#ff0000',  10: '#00ff00',  11: '#ffff00',
 \   12: '#0000ff',  13: '#ff00ff',  14: '#00ffff',  15: '#ffffff',
 \   16: '#aaaaaa',  17: '#aaaaaa',  18: '#aaaaaa',  19: '#aaaaaa',
 \   20: '#aaaaaa',  21: '#aaaaaa',  22: '#aaaaaa',  23: '#aaaaaa',
 \   24: '#aaaaaa',  25: '#aaaaaa',  26: '#aaaaaa',  27: '#aaaaaa',
 \   28: '#008700',  29: '#00875f',  30: '#008787',  31: '#0087af',
 \   32: '#0087d7',  33: '#0087ff',  34: '#00af00',  35: '#00af5f',
 \   36: '#00af87',  37: '#00afaf',  38: '#00afd7',  39: '#00afff',
 \   40: '#00d700',  41: '#00d75f',  42: '#00d787',  43: '#00d7af',
 \   44: '#00d7d7',  45: '#00d7ff',  46: '#00ff00',  47: '#00ff5f',
 \   48: '#00ff87',  49: '#00ffaf',  50: '#00ffd7',  51: '#00ffff',
 \   52: '#5f0000',  53: '#5f005f',  54: '#5f0087',  55: '#5f00af',
 \   56: '#5f00d7',  57: '#5f00ff',  58: '#5f5f00',  59: '#5f5f5f',
 \   60: '#5f5f87',  61: '#5f5faf',  62: '#5f5fd7',  63: '#5f5fff',
 \   64: '#5f8700',  65: '#5f875f',  66: '#5f8787',  67: '#5f87af',
 \   68: '#5f87d7',  69: '#5f87ff',  70: '#5faf00',  71: '#5faf5f',
 \   72: '#5faf87',  73: '#5fafaf',  74: '#5fafd7',  75: '#5fafff',
 \   76: '#5fd700',  77: '#5fd75f',  78: '#5fd787',  79: '#5fd7af',
 \   80: '#5fd7d7',  81: '#5fd7ff',  82: '#5fff00',  83: '#5fff5f',
 \   84: '#5fff87',  85: '#5fffaf',  86: '#5fffd7',  87: '#5fffff',
 \   88: '#870000',  89: '#87005f',  90: '#870087',  91: '#8700af',
 \   92: '#8700d7',  93: '#8700ff',  94: '#875f00',  95: '#875f5f',
 \   96: '#875f87',  97: '#875faf',  98: '#875fd7',  99: '#875fff',
 \   100: '#878700',  101: '#87875f',  102: '#878787',  103: '#8787af',
 \   104: '#8787d7',  105: '#8787ff',  106: '#87af00',  107: '#87af5f',
 \   108: '#87af87',  109: '#87afaf',  110: '#87afd7',  111: '#87afff',
 \   112: '#87d700',  113: '#87d75f',  114: '#87d787',  115: '#87d7af',
 \   116: '#87d7d7',  117: '#87d7ff',  118: '#87ff00',  119: '#87ff5f',
 \   120: '#87ff87',  121: '#87ffaf',  122: '#87ffd7',  123: '#87ffff',
 \   124: '#af0000',  125: '#af005f',  126: '#af0087',  127: '#af00af',
 \   128: '#af00d7',  129: '#af00ff',  130: '#af5f00',  131: '#af5f5f',
 \   132: '#af5f87',  133: '#af5faf',  134: '#af5fd7',  135: '#af5fff',
 \   136: '#af8700',  137: '#af875f',  138: '#af8787',  139: '#af87af',
 \   140: '#af87d7',  141: '#af87ff',  142: '#afaf00',  143: '#afaf5f',
 \   144: '#afaf87',  145: '#afafaf',  146: '#afafd7',  147: '#afafff',
 \   148: '#afd700',  149: '#afd75f',  150: '#afd787',  151: '#afd7af',
 \   152: '#afd7d7',  153: '#afd7ff',  154: '#afff00',  155: '#afff5f',
 \   156: '#afff87',  157: '#afffaf',  158: '#afffd7',  159: '#afffff',
 \   160: '#d70000',  161: '#d7005f',  162: '#d70087',  163: '#d700af',
 \   164: '#d700d7',  165: '#d700ff',  166: '#d75f00',  167: '#d75f5f',
 \   168: '#d75f87',  169: '#d75faf',  170: '#d75fd7',  171: '#d75fff',
 \   172: '#d78700',  173: '#d7875f',  174: '#d78787',  175: '#d787af',
 \   176: '#d787d7',  177: '#d787ff',  178: '#d7af00',  179: '#d7af5f',
 \   180: '#d7af87',  181: '#d7afaf',  182: '#d7afd7',  183: '#d7afff',
 \   184: '#d7d700',  185: '#d7d75f',  186: '#d7d787',  187: '#d7d7af',
 \   188: '#d7d7d7',  189: '#d7d7ff',  190: '#d7ff00',  191: '#d7ff5f',
 \   192: '#d7ff87',  193: '#d7ffaf',  194: '#d7ffd7',  195: '#d7ffff',
 \   196: '#ff0000',  197: '#ff005f',  198: '#ff0087',  199: '#ff00af',
 \   200: '#ff00d7',  201: '#ff00ff',  202: '#ff5f00',  203: '#ff5f5f',
 \   204: '#ff5f87',  205: '#ff5faf',  206: '#ff5fd7',  207: '#ff5fff',
 \   208: '#ff8700',  209: '#ff875f',  210: '#ff8787',  211: '#ff87af',
 \   212: '#ff87d7',  213: '#ff87ff',  214: '#ffaf00',  215: '#ffaf5f',
 \   216: '#ffaf87',  217: '#ffafaf',  218: '#ffafd7',  219: '#ffafff',
 \   220: '#ffd700',  221: '#ffd75f',  222: '#ffd787',  223: '#ffd7af',
 \   224: '#ffd7d7',  225: '#ffd7ff',  226: '#ffff00',  227: '#ffff5f',
 \   228: '#ffff87',  229: '#ffffaf',  230: '#ffffd7',  231: '#ffffff',
 \   232: '#aaaaaa',  233: '#aaaaaa',  234: '#aaaaaa',  235: '#aaaaaa',
 \   236: '#aaaaaa',  237: '#aaaaaa',  238: '#aaaaaa',  239: '#aaaaaa',
 \   240: '#aaaaaa',  241: '#aaaaaa',  242: '#aaaaaa',  243: '#aaaaaa',
 \   244: '#808080',  245: '#8a8a8a',  246: '#949494',  247: '#9e9e9e',
 \   248: '#a8a8a8',  249: '#b2b2b2',  250: '#bcbcbc',  251: '#c6c6c6',
 \   252: '#d0d0d0',  253: '#dadada',  254: '#e4e4e4',  255: '#eeeeee' }

:function! SetHi(group, values)

  :let cmd = "hi " . a:group

  :if has_key(a:values, 'fg')
    :let cmd .= " guifg=" . g:colorlist[a:values['fg']]
    :let cmd .= " ctermfg=" . a:values['fg']
  :endif

  :if has_key(a:values, 'bg')
    :let cmd .= " guibg=" . g:colorlist[a:values['bg']]
    :let cmd .= " ctermbg=" . a:values['bg']
  :endif

  :if has_key(a:values, 'usenone')
    :let cmd .= " cterm=NONE"
  :endif

  " :echom "Final command: " . cmd
  execute(cmd)

:endfunction


" call SetHi("Normal", {'bg': 100, 'usenone': 1})
" call SetHi("Normal", {'fg': 100, 'bg': 128})


" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------

" Edit window
call SetHi("Normal",          { 'bg': 255, 'fg': 236})
call SetHi("Cursor",          { 'bg':  34, 'fg': 236, 'usenone': 1})
call SetHi("LineNr",          { 'bg': 254, 'fg': 243})
call SetHi("EndOfBuffer",     { 'bg': 255, 'fg': 241})
call SetHi("CursorLine",      { 'bg': 254, 'usenone': 1})
call SetHi("CursorColumn",    { 'bg': 253})
call SetHi("CursorLineNr",    { 'fg': 34})
call SetHi("ColorColumn",     { 'bg': 252})
call SetHi("Visual",          { 'bg': 28, 'fg': 15, 'usenone': 1})

" Gutter
call SetHi("FoldColumn",      { 'bg': 254, 'fg': 243})
call SetHi("Folded",          { 'bg': 252, 'fg': 241})
call SetHi("SignColumn",      { 'bg': 254, 'fg': 243})

" Window / Tabs
call SetHi("VertSplit",       { 'bg': 254, 'fg': 28, 'usenone': 1})
call SetHi("TabLine",         { 'bg': 22, 'fg': 236})
call SetHi("TabLineFill",         { 'bg': 254, 'fg': 236, 'usenone': 1})
call SetHi("TabLineSel",      { 'bg': 28, 'fg': 254})

" File Navigation / Searching
call SetHi("Search",          { 'bg': 214, 'fg': 236})
call SetHi("IncSearch",       { 'bg': 34, 'fg': 254})
call SetHi("Directory",       { 'fg': 33, 'usenone': 1})

" Autocomplete menu
call SetHi("Pmenu",           { 'bg': 241, 'fg': 0})
call SetHi("PmenuSel",        { 'bg': 22, 'fg': 70})

" Wildmenu/bufferline
call SetHi("WildMenu",        { 'bg': 34, 'fg': 154, 'usenone': 1})
call SetHi("StatusLine",      { 'bg': 28, 'fg': 251, 'usenone': 1})
call SetHi("StatusLineNC",    { 'bg': 34, 'fg': 154, 'usenone': 1})

call SetHi("SpellBad",        { 'bg': 125, 'fg': 230})
call SetHi("MatchParen",      { 'bg': 214, 'fg': 241})



" ----------------------------------------------------------------------------
" SYNTAX
" ----------------------------------------------------------------------------

" Standard vim groups (see :help group-name)
" Really, type :help group-name, you'll see the color scheme in action!)
call SetHi("Comment", {'fg': 247})

call SetHi("Constant", {'fg': 164})
call SetHi("String", {'fg': 166})
hi   link   Character    String
call SetHi("Float", {'fg': 33})
hi   link   Number          Float
hi   link   Boolean         Float

call SetHi("Identifier", {'fg': 160})
" hi   link         Function        Identifier


call SetHi("Statement", {'fg': 70})
" SetHi("Conditional", {})
" SetHi("Repeat", {})
" SetHi("Label", {})
" SetHi("Operator", {})
" SetHi("Keyword", {})
" SetHi("Exception", {})

call SetHi("PreProc", {'fg': 94})
" SetHi("PreProc", {})
" SetHi("Include", {})
" SetHi("Define", {})
" SetHi("Macro", {})
" SetHi("PreCondit", {})

call SetHi("Type", {'fg': 106})
" SetHi("StorageClass", {})
" SetHi("Structure", {})
" SetHi("Typedef", {})

call SetHi("Special", {'fg': 99})
" SetHi("SpecialChar", {})
" SetHi("Tag", {})
" SetHi("Delimiter", {})
" SetHi("SpecialComment", {})
" SetHi("Debug", {})

call SetHi("Underlined", {'fg': 94})

" SetHi("Ignore", {})

"  palette red is too bright for background
call SetHi("Error", {'bg': 160})

call SetHi("Todo", {'bg': 178, 'fg': 52})

" ------------------------
"  LANGUAGE SPECIFIC
" ------------------------

" Python
hi  link pythonInclude    Type
hi  link pythonStatement  Type
hi  link pythonDecoratorName pythonDecorator
" hi   pythonBuiltin      guifg=#ffff5f     ctermfg=227
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
call SetHi("mkdCode", {'bg': 237, 'fg': 94})



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
call SetHi("ActiveBuffer", {'bg': 238, 'fg': 15, 'usenone': 1})
call SetHi("InactiveBuffer", {'bg': 238, 'fg': 241, 'usenone': 1})

" NOTE: these bufferline highlight groups can be overriden in the airline
" theme, allowing to change highlight depending on the mode
