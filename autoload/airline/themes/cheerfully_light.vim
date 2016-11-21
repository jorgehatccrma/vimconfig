scriptencoding utf-8

" Each theme is contained in its own file and declares variables scoped to the
" file.  These variables represent the possible "modes" that airline can
" detect.  The mode is the return value of mode(), which gets converted to a
" readable string.  The following is a list currently supported modes: normal,
" insert, replace, visual, and inactive.
"
" Each mode can also have overrides.  These are small changes to the mode that
" don't require a completely different look.  "modified" and "paste" are two
" such supported overrides.  These are simply suffixed to the major mode,
" separated by an underscore.  For example, "normal_modified" would be normal
" mode where the current buffer is modified.
"
" The theming algorithm is a 2-pass system where the mode will draw over all
" parts of the statusline, and then the override is applied after.  This means
" it is possible to specify a subset of the theme in overrides, as it will
" simply overwrite the previous colors.  If you want simultaneous overrides,
" then they will need to change different parts of the statusline so they do
" not conflict with each other.
"
" First, let's define an empty dictionary and assign it to the "palette"
" variable. The # is a separator that maps with the directory structure. If
" you get this wrong, Vim will complain loudly.
let g:airline#themes#cheerfully_light#palette = {}

" Custom highlilght group to use for bufferline integration
" It needs to be configured by setting:
" let g:bufferline_active_highlight = 'ActiveBuffer'
" let g:bufferline_inactive_highlight = 'InactiveBuffer'
" These are defatuls that can be overriden in each mode
let s:InactiveBuffer  = [ '#606060' , '#c6c6c6' , 241 , 251 ]
let s:ActiveBuffer  = [ '#bcbcbc' , '#c6c6c6' , 250 , 251 ]

" First let's define some arrays. The s: is just a VimL thing for scoping the
" variables to the current script. Without this, these variables would be
" declared globally. Now let's declare some colors for normal mode and add it
" to the dictionary.  The array is in the format:
" [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid
" values for the "opt" value.
let s:N1   = [ '#87ff00' , '#008700' , 118 , 28 ]
let s:N2   = [ '#005f00' , '#87d700' , 22 , 112 ]
let s:N3   = [ '#005f00' , '#dadada' , 22 , 253 ]
let g:airline#themes#cheerfully_light#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#cheerfully_light#palette.normal.ActiveBuffer = s:N3
let g:airline#themes#cheerfully_light#palette.normal.InactiveBuffer = s:InactiveBuffer

" Here we define overrides for when the buffer is modified.  This will be
" applied after g:airline#themes#cheerfully_light#palette.normal, hence why only certain keys are
" declared.
let g:airline#themes#cheerfully_light#palette.normal_modified = {
      \ 'airline_c': [ '#000000' , '#afd700' , 0       , 148     , ''     ] ,
      \ }
let s:NAB   = [ '#005f00' , '#afd700' , 22 , 148 ]
let g:airline#themes#cheerfully_light#palette.normal_modified.ActiveBuffer = s:NAB


let s:I1 = [ '#00d7ff' , '#005faf' , 45  , 25  ]
let s:I2 = [ '#000087' , '#00afff' , 18  , 39  ]
let s:I3 = [ '#000087' , '#dadada' , 18  , 253 ]
let g:airline#themes#cheerfully_light#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#cheerfully_light#palette.insert.ActiveBuffer = s:I3
let g:airline#themes#cheerfully_light#palette.insert_modified = {
      \ 'airline_c': [ '#000087' , '#00d7ff' , 18       , 45      , ''     ] ,
      \ }
let s:IAB = [ '#000080' , '#00d7ff' , 17  , 45  ]
let g:airline#themes#cheerfully_light#palette.insert_modified.ActiveBuffer = s:IAB
let g:airline#themes#cheerfully_light#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      \ }


let g:airline#themes#cheerfully_light#palette.replace = copy(g:airline#themes#cheerfully_light#palette.insert)
let g:airline#themes#cheerfully_light#palette.replace.airline_a = [ s:I1[0]   , '#ffd700' , s:I1[2] , 220     , ''     ]
let g:airline#themes#cheerfully_light#palette.replace_modified = g:airline#themes#cheerfully_light#palette.insert_modified


let s:V1 = [ '#ffd700' , '#af0000' , 220 , 124 ]
let s:V2 = [ '#5f0000' , '#ffd700' , 52  , 220 ]
let s:V3 = [ '#5f0000' , '#dadada' , 52 , 253 ]
let g:airline#themes#cheerfully_light#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#cheerfully_light#palette.visual.ActiveBuffer = s:V3
let g:airline#themes#cheerfully_light#palette.visual_modified = {
      \ 'airline_c': [ '#5f0000' , '#ffff00' , 52      , 226     , ''     ] ,
      \ }
let s:VAB = [ '#5f0000' , '#ffff00' , 52  , 226 ]
let g:airline#themes#cheerfully_light#palette.visual_modified.ActiveBuffer = s:VAB


let s:IA1 = [ '#a8a8a8' , '#585858' , 248 , 240 , '' ]
let s:IA2 = [ '#444444' , '#808080' , 238 , 244 , '' ]
let s:IA3 = [ '#444444' , '#9e9e9e' , 238 , 247 , '' ]
let g:airline#themes#cheerfully_light#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#cheerfully_light#palette.inactive.ActiveBuffer = s:IA3
let g:airline#themes#cheerfully_light#palette.inactive.InactiveBuffer = s:InactiveBuffer
let g:airline#themes#cheerfully_light#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }
let g:airline#themes#cheerfully_light#palette.inactive_modified.ActiveBuffer = s:IA2


" Accents are used to give parts within a section a slightly different look or
" color. Here we are defining a "red" accent, which is used by the 'readonly'
" part by default. Only the foreground colors are specified, so the background
" colors are automatically extracted from the underlying section colors. What
" this means is that regardless of which section the part is defined in, it
" will be red instead of the section's foreground color. You can also have
" multiple parts with accents within a section.
let g:airline#themes#cheerfully_light#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }


" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#cheerfully_light#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
      \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
      \ [ '#5f00af' , '#ffffff' , 55  , 231 , 'bold' ])

