" Vim cheerfully dark colorscheme
" " Author: Jorge Herrera <jherreras@gmail.com>
" " Maintainer: Jorge Herrera <jherreras@gmail.com>
" " Notes:
" "    'hi' is shorthand for 'highlight'
" "    To check the meaning of the hi groups, :help 'hi'

" Color reference:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "cheerfully_dark"
let colors_name = "cheerfully_dark"



" Palette reference (as cterm codes) - Try to stick to these colors
" light-green  : 76
" light-green2 : 112
" green        : 22
" yellow       : 220
" orange       : 172
" blue         : 39
" red          : 160
" light-blue   : 81
" purple       : 105
" gray         : 246


" ----------------------------------------------------------------------------
" GUI
" ----------------------------------------------------------------------------

" Edit window
hi   Normal       guibg=#121212   ctermbg=233   guifg=#e4e4e4   ctermfg=254
hi   Cursor       guibg=#00af00   ctermbg=34    guifg=#e4e4e4   ctermfg=254
hi   LineNr       guibg=#000000   ctermbg=0     guifg=#808080   ctermfg=244
hi   EndOfBuffer  guibg=#121212   ctermbg=233   guifg=#949494   ctermfg=246
hi   CursorLine   guibg=#1c1c1c   ctermbg=234   cterm=NONE
hi   CursorColumn guibg=#1c1c1c   ctermbg=234
hi   CursorLineNr guifg=#ffd700   ctermfg=220
hi   ColorColumn  guibg=#262626   ctermbg=235
hi   Visual       guibg=#008700   ctermbg=28    guifg=#ffffff   ctermfg=15  cterm=NONE

" Gutter
hi   FoldColumn   guibg=#000000   ctermbg=0     guifg=#808080   ctermfg=244
hi   Folded       guibg=#262626   ctermbg=235   guifg=#949494   ctermfg=246
hi   SignColumn   guibg=#000000   ctermbg=0     guifg=#808080   ctermfg=244

" Window / Tabs
hi   VertSplit    guibg=#000000   ctermbg=0     guifg=#008700   ctermfg=28  cterm=NONE
hi   TabLine      guibg=#005f00   ctermbg=22    guifg=#e4e4e4   ctermfg=254
hi   TabLineFill  guibg=#000000   ctermbg=0     cterm=NONE
hi   TabLineSel   guibg=#008700   ctermbg=28    guifg=#e4e4e4   ctermfg=254

" File Navigation / Searching
hi   Search       guibg=#ffd700   ctermbg=220   guifg=#121212   ctermfg=233
hi   IncSearch    guibg=#00af00   ctermbg=34    guifg=#e4e4e4   ctermfg=254 cterm=NONE
hi   Directory    guifg=#00afff   ctermfg=39    cterm=NONE

" Autocomplete menu
hi   Pmenu        guibg=#949494   ctermbg=246   guifg=#000000   ctermfg=0
hi   PmenuSel     guibg=#005f00   ctermbg=22    guifg=#5fd700   ctermfg=76

" Wildmenu/bufferline
hi   WildMenu     guibg=#008700   ctermbg=28    guifg=#87ff00   ctermfg=118 cterm=NONE
hi   StatusLine   guibg=#005f00   ctermbg=22    guifg=#b2b2b2   ctermfg=249 cterm=NONE
hi   StatusLineNC guibg=#008700   ctermbg=28    guifg=#87ff00   ctermfg=118 cterm=NONE

hi   SpellBad     guibg=#af005f   ctermbg=125   guifg=#ffffd7   ctermfg=230
hi   MatchParen   guibg=#ffdf00   ctermbg=220   guifg=bg        ctermfg=bg



" ----------------------------------------------------------------------------
" SYNTAX
" ----------------------------------------------------------------------------

" Standard vim groups (see :help group-name)
" Really, type :help group-name, you'll see the color scheme in action!)
hi   Comment      guifg=#949494   ctermfg=246

hi   Constant     guifg=#af00af   ctermfg=127
hi   String       guifg=#d78700   ctermfg=172
hi   link   Character    String
hi   Float        guifg=#00afff   ctermfg=39
hi   link   Number          Float
hi   link   Boolean         Float

hi   Identifier   guifg=#d70000   ctermfg=160
" hi   link         Function        Identifier


hi   Statement    guifg=#5fd700 ctermfg=76
" hi   Conditional      guifg=          ctermfg=
" hi   Repeat           guifg=          ctermfg=
" hi   Label            guifg=          ctermfg=
" hi   Operator     guifg=#87d7ff   ctermfg=117
" hi   Keyword          guifg=          ctermfg=
" hi   Exception        guifg=          ctermfg=

hi   PreProc      guifg=#ffd700   ctermfg=220
" hi   PreProc      guifg=#005fd7   ctermfg=38
" hi   Include      guifg=#87d700   ctermfg=112
" hi   Define           guifg=          ctermfg=
" hi   Macro            guifg=          ctermfg=
" hi   PreCondit        guifg=          ctermfg=

hi   Type             guifg=#87d75f   ctermfg=113
" hi   StorageClass     guifg=          ctermfg=
" hi   Structure        guifg=          ctermfg=
" hi   Typedef          guifg=          ctermfg=

hi   Special          guifg=#8787ff   ctermfg=105
" hi   SpecialChar      guifg=          ctermfg=
" hi   Tag              guifg=          ctermfg=
" hi   Delimiter        guifg=          ctermfg=
" hi   SpecialComment   guifg=          ctermfg=
" hi   Debug            guifg=          ctermfg=

hi   Underlined       guifg=#ffd700   ctermfg=220

" hi   Ignore           guifg=          ctermfg=

"  palette red is too bright for background
hi   Error            guibg=#af0000   ctermbg=124

hi   Todo             guibg=#ffdf00   ctermbg=220  guifg=#5f0000  ctermfg=52

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
hi   mkdCode   guifg=#ffd700   ctermfg=220   guibg=#3a3a3a   ctermbg=237



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
hi   ActiveBuffer     guibg=#444444   ctermbg=238   guifg=#ffffff   ctermfg=15    cterm=NONE
hi   InactiveBuffer   guibg=#444444   ctermbg=238   guifg=#949494   ctermfg=246   cterm=NONE

" NOTE: these bufferline highlight groups can be overriden in the airline
" theme, allowing to change highlight depending on the mode
