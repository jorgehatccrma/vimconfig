" set background=dark
set background=light

highlight clear
if exists('syntax_on')
  syntax reset
endif

" GUI
" highlight Normal guibg=#262626 ctermbg=235
highlight Normal guibg=#dadada ctermbg=253
" highlight Normal guifg=#e4e4e4 ctermfg=254
highlight Normal guifg=#262626 ctermfg=235

highlight MatchParen guibg=#ffdf00 ctermbg=220 guifg=bg ctermfg=bg


" other important groups/colors
highlight Comment guifg=#767676 ctermfg=243
highlight Constant guifg=#0087d7 ctermfg=32
highlight Statement guifg=#008700 ctermfg=28
highlight Operator guifg=#87d7ff ctermfg=117
highlight LineNr guibg=#000000 ctermbg=0 guifg=#808080 ctermfg=244
" highlight Special guifg=#0000ff ctermfg=21


highlight String guifg=#af5f00 ctermfg=130
highlight Include guifg=#008700 ctermfg=28
highlight Function guifg=#d70000 ctermfg=160

" Python specifics
highlight pythonBuiltin guifg=#d75f00 ctermfg=166
highlight pythonExceptions guifg=#ffff00 ctermfg=226
highlight link pythonDecorator Function

" highlight Number guifg=#005fd7 ctermfg=26
highlight link Number Constant
highlight link Boolean Constant

highlight Var guifg=#ffffdf ctermfg=230

highlight Todo guibg=#ffdf00 ctermbg=220

" from C/C++ inspection
highlight PreProc guifg=#005fd7 ctermfg=38

" (apparently) vim specific
highlight default link vimHiKeyList Constant


highlight CursorLine guibg=#303030 ctermbg=236


let g:colors_name = "cheerfully_light"
let colors_name = "cheerfully_light"
