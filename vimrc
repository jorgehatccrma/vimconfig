" vim:foldmethod=expr:foldlevel=0:foldexpr=MDFold(v\:lnum):foldtext=FoldText()

" # File Help
"
" Tips to navigate this file
" -----------------------------------------------------------------------------

" ----------+-----------------------------------
" Command   |  Description
" ----------+-----------------------------------
"  zo       | Open fold under cursor
"  zc       | Close fold under cursor
"  zR       | Open all folds
"  zM       | Close all folds
"  :help zo | More help

" # Preamble
" -----------------------------------------------------------------------------

" This vimrc file depends on Vundle (https://github.com/VundleVim/Vundle.vim)
" Before using it, you'll need to clone vundle to your .vim folder:
"
" $ git clone https://github.com/VundleVim/Vundle.vim.git \
"     ~/.vim/bundle/Vundle.vim
"
" After updating this vimrc with new plugins (or the first time vim is run with
" this vimrc) you'll need to update the plugins. Inside vim run:
"
" :PluginInstall
"
" To remove unused plugins run:
" :PluginClean
"
" Must be first line !!!!
set nocompatible   " disable Vi compatible mode (must be first line!!!)


" ## OS specific stuff

" to do platform specific configs
let os = substitute(system('uname'), "\n", "", "")
" " for example
" if os == "Darwin"
"  " Do OS X stuff.
" nnoremap <M-{> gT
"  nnoremap <M-}> gt
" elseif os == "Linux"
"  " Do Linux-specific stuff.
"  nnoremap <S-h> gT
"  nnoremap <S-l> gt
" else
"  " Do Linux-specific stuff.
"  nnoremap <S-h> gT
"  nnoremap <S-l> gt
" endif


" # Plugins
" -----------------------------------------------------------------------------

" Install vim-plug if not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug will handle plugins
call plug#begin('~/.vim/bundle')

" To access help for vim-plug itself
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'junegunn/vim-plug'

" General purpose plugins

""""""""""""""""""""""""""""""""""""""""
" Currently being evaluated
""""""""""""""""""""""""""""""""""""""""
Plug 'terryma/vim-expand-region'
" Visualize undo tree
Plug 'mbbill/undotree'
Plug 'tpope/vim-abolish'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'


""""""""""""""""""""""""""""""""""""""""
" Approved plugins
""""""""""""""""""""""""""""""""""""""""
" Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] } "Loads only when opening NERDTree
" Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'w0rp/ale'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-obsession'
Plug 'junegunn/goyo.vim'
Plug 'severin-lemaignan/vim-minimap'
Plug 'sirver/ultisnips'
" Ultisnippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'itchyny/vim-gitbranch'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'gerw/vim-HiLinkTrace'
Plug 'majutsushi/tagbar'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'danro/rename.vim'
" Simple buffer explorer
Plug 'jeetsukumaran/vim-buffergator'
Plug 'bling/vim-bufferline'
" File coloring
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] } "Loads only when opening NERDTree
" Plug 'ryanoasis/vim-devicons', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] } "Loads only when opening NERDTree


" Google's code formatting tools
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

" expanded targets and text objects. See
" http://owen.cymru/vim-text-objects-extend-vims-natural-language-2/
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-indent'
Plug 'sgur/vim-textobj-parameter'
Plug 'bps/vim-textobj-python'
Plug 'libclang-vim/vim-textobj-clang'

" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'JamshedVesuna/vim-markdown-preview'

" Python
Plug 'Vimjas/vim-python-pep8-indent'
" Plug 'tmhedberg/SimpylFold'

" Other languages
Plug 'motus/pig.vim'
Plug 'honza/dockerfile.vim'

" HTML, Javascript, Jinja, etc.
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'othree/html5-syntax.vim'
Plug 'moll/vim-node'
" Plug 'mxw/vim-jsx'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'maksimr/vim-jsbeautify'

" C/C++
Plug 'rhysd/vim-clang-format'

" GoLang
Plug 'fatih/vim-go'

" LaTeX
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'

" Neo4j / Cypher
Plug 'neo4j-contrib/cypher-vim-syntax'

" CSS, SASS, Stylus, etc
Plug 'ap/vim-css-color'
" Plug 'chrisbra/Colorizer'
Plug 'wavded/vim-stylus'

" TOML syntax
Plug 'cespare/vim-toml'

" Last but not least
Plug 'jorgehatccrma/vim-cheerful'


" " Brief help
" " :PlugList       - lists configured plugins
" " :PlugInstall    - installs plugins; append `!` to update or just
" " :PlugUpdate
" " :PlugSearch foo - searches for foo; append `!` to refresh local cache
" " :PlugClean      - confirms removal of unused plugins; append `!` to
" " auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ

" vim-plug surrenders control now
call plug#end()


" " Put your non-Plugin stuff after this line






" ## Plugin configs

" Add plugin customizations/configurations here

" " ### Powerline

" let g:Powerline_symbols = 'fancy'
" set laststatus=2
" call Pl#Theme#RemoveSegment('fileencoding')
" call Pl#Theme#RemoveSegment('fileformat')

"
" ### NERDTree

" file browser mapped to \p
nmap <silent> <Leader>p :execute "NERDTreeToggle" getcwd()<CR>

" hightlight current file on the tree
nmap <Leader>f :NERDTreeFind<CR>

" Hide certain files and folders
let NERDTreeIgnore=[
      \ '__pycache__$[[dir]]',
      \ '\.pyc$[[file]]',
      \ ]



" ### NERDCommenter
" let g:NERDDefaultAlign = 'left'
" " let g:NERDDefaultAlign = 'start'

" " add extrace space after comment character, for every language
" let NERDSpaceDelims = 1

" " change comment character for .ini files
" let g:NERDCustomDelimiters = {
"     \ 'text': { 'left': '#'},
"     \ 'python': { 'left': '#', 'leftAlt': '#' },
" \ }

" if has("autocmd")
"   augroup Comments
"     autocmd FileType * let g:NERDDefaultAlign='left'
"     autocmd FileType dosini let g:NERDDefaultAlign='start'
"   augroup END
" endif



" ### Markdown
" Disable plasticboy/vim-markdown's folding
let g:vim_markdown_folding_disable = 1

" ### Mardown preview

" use grip (i.e. GitHub flavored markdown, I think)
let g:vim_markdown_preview_github=1
let g:vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'
" let vim_markdown_preview_browser='Opera'



" ### Minimap

let g:minimap_toggle='<leader>mm'



" ### ALE

" Specify linters for specific languages (other languages will use all availbale
" linters
" let g:ale_linters = { 'python': ['flake8', ], }
let g:ale_linters = { 'python': ['pylint', 'flake8'], }
" let g:ale_fixers = { 'python': ['yapf', ], }
let g:ale_fixers = { 'python': ['yapf', 'autopep8'], }

let g:ale_python_flake8_options = '--ignore=E402'

let g:ale_fixers['json'] = ['fixjson']

" Better message format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %code:% %s [%severity%]'

" let g:ale_sign_error = ''
let g:ale_sign_error = ''
" let g:ale_sign_error = ''
" let g:ale_sign_error = '✗'
" let g:ale_sign_error = ''
" let g:ale_sign_warning = ''
" let g:ale_sign_warning = ''
" let g:ale_sign_warning = ''
" let g:ale_sign_warning = ''
let g:ale_sign_warning = ''
" let g:ale_sign_warning = ''
" let g:ale_sign_warning = 'ﬤ'
" let g:ale_sign_warning = ''
" let g:ale_sign_warning = ''
" let g:ale_sign_warning = '⚠'

" Add new mappings (this will override some default vim-unimpaired mappings
" I don't really use
let g:nremap = {"[a": "",  "]a": ""}
noremap [a :ALEPreviousWrap<CR>
noremap ]a :ALENextWrap<CR>



" ### Lightline

set noshowmode
set laststatus=2

" \   'separator': { 'left': '', 'right': '' },
" \   'subseparator': { 'left': '', 'right': '│'},
let g:lightline = {
    \   'colorscheme': 'wombat',
    \   'separator': { 'left': '', 'right': '' },
    \   'subseparator': { 'left': '┆', 'right': '┆'},
    \   'component_function': {
    \     'gitbranch': 'LightlineGitBranch',
    \     'filename': 'LightlineFilename',
    \     'modified': 'LightlineModified',
    \     'mode': 'LightlineMode',
    \     'filetype': 'LightlineFiletype',
    \     'fileencoding': 'LightlineFileencoding',
    \     'fileformat': 'LightlineFileformat',
    \   },
    \   'active': {
    \     'left': [
    \       ['mode', 'paste'],
    \       ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok'],
    \       ['readonly', 'gitbranch', 'filename'],
    \     ],
    \     'right': [
    \       ['modified'],
    \       ['filetype', 'fileencoding','fileformat', 'lineinfo']
    \     ],
    \   },
    \   'inactive': {
    \     'left': [[], ['filename']],
    \     'right': [[], ['lineinfo']],
    \   },
    \   'tabline_separator': {
    \     'left': '???',
    \     'right': '!!!',
    \   }
    \ }

" Adding ALE to lightline via lightline-ale plugin
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'ALEchecking',
      \     'linter_warnings': 'ALEwarning',
      \     'linter_errors': 'ALEerror',
      \     'linter_ok': 'ALEok',
      \ }

" Use FontAwesome icons
" let g:lightline#ale#indicator_warnings = "\uf071"
" let g:lightline#ale#indicator_errors = "\uf05e"
" let g:lightline#ale#indicator_ok = "\uf00c"
" let g:lightline#ale#indicator_checking = "\uf110"

let g:lightline#ale#indicator_warnings = ' '
let g:lightline#ale#indicator_errors = ' '
let g:lightline#ale#indicator_ok = " "
" let g:lightline#ale#indicator_ok = " "
" let g:lightline#ale#indicator_checking = " ..."
let g:lightline#ale#indicator_checking = "嗢..."
" let g:lightline#ale#indicator_checking = " "
" let g:lightline#ale#indicator_checking = " "


function! LightlineFilename()
  " let fname = winwidth(0) > 120 ? expand('%:p') : expand('%:t')
  let fname = winwidth(0) > 120 ? expand('%:f') : expand('%:t')
  let nr = bufnr('')
  return nr . ":" . fname
endfunction

function! LightlineModified()
  return &mod ? '  ' : ''
endfunction

let s:special_filetypes = ['help', 'vundle', 'nerdtree', 'vim-minimap']

function! LightlineMode()
  if index(s:special_filetypes, &filetype) >= 0
    return ''
  endif
  return lightline#mode()
endfunction

function! LightlineFiletype()
  if index(s:special_filetypes, &filetype) >= 0
    return ''
  endif
  return &ft !=# "" ? &ft : "no ft"
endfunction

function! LightlineFileencoding()
  if index(s:special_filetypes, &filetype) >= 0
    return ''
  endif
  return &fenc !=# "" ? &fenc : &enc
endfunction

function! LightlineFileformat()
  if index(s:special_filetypes, &filetype) >= 0
    return ''
  endif
  return &ff
endfunction

function! LightlineGitBranch()
  if index(s:special_filetypes, &filetype) >= 0
    return ''
  endif
  let bname = gitbranch#name()
  if bname ==? ''
    return ''
  endif
  return ' ' . bname
endfunction



" ### UltiSnips

" Custom snippets location
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

" use google style docstrings
let g:ultisnips_python_style = "google"



" ### Bufferline

" custom highlight groups to integrate with vim-airline/theme/cheerfully*
" let g:bufferline_active_highlight = 'Float'
" let g:bufferline_inactive_highlight = 'String'
" let g:bufferline_active_highlight = 'ActiveBuffer'
" let g:bufferline_inactive_highlight = 'InactiveBuffer'



" ### Buffergator

" Remove buffergator key mappings
let g:buffergator_suppress_keymaps = 1

" replace buffer gator's default Open mapping with Toggle
map <Leader>b :BuffergatorToggle<CR>



" ### Tagbar

" set focus to TabBar automatically
let g:tagbar_autofocus = 1

" toggle tag bar
nmap <Leader>tb :TagbarToggle<CR>


" ### AutoPairs

" to wrap the whole word if right next to one
" This might need to be wrapped in the OS X specifi section, but need testing
" over ssh AND locally in a linux box
let g:AutoPairsShortcutFastWrap = '<ESC>e'



" ### Clang-format

" let g:clang_format#code_style = 'llvm'
" let g:clang_format#code_style = 'google'
let g:clang_format#code_style = 'chromium'
" let g:clang_format#code_style = 'mozilla'
let g:clang_format#command = 'clang-format-3.8'

" detect a .clang-format
let g:clang_format#detect_style_file = 1

let g:javascript#command = 'js-beautify'


" ### Indentation disaproval

" let g:LookOfDisapprovalTabTreshold=5
" let g:LookOfDisapprovalSpaceTreshold=(&tabstop*5)



" ### LaTeX

"  " From vim-latex documentation
" " IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
" set grepprg=grep\ -nH\ $*

" " OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
" let g:tex_flavor='latex'


" for vimtex
let g:vimtex_compiler_latexmk = {
      \ 'continuous' : 1,
      \ 'executable' : 'latexmk',
      \ 'options' : [
      \   '-pdf',
      \   '-verbose',
      \   '-file-line-error',
      \   '-synctex=1',
      \   '-interaction=nonstopmode',
      \ ],
      \}



" ### Goyo

" changing from the default 80
let g:goyo_width = 100


" ### VimTex

if has('nvim')
  let g:vimtex_compiler_progname='nvr'
end

" ### NerdTreeSyntax Highlight

" highlight full name (not only icons, which I'm not currently using)
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" add new file extensions/change existing color mappings
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = "999999"

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*\.tfrecords$'] = "3F51B5"

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*\.sh$'] = "EA80FC"

" ### Undotree

nnoremap <Leader>u :UndotreeToggle<CR>


" ### Yankstack

" nmap <leader>p <Plug>yankstack_substitute_older_paste
" nmap <leader>P <Plug>yankstack_substitute_newer_paste

" Force loading YanStack asap, to avoid overriding my custom `S` mapping
" (similar to https://github.com/maxbrunsfeld/vim-yankstack/issues/9)
call yankstack#setup()


" ### Fzf

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Statement'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'VimVar'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'String'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Identifier'],
  \ 'marker':  ['fg', 'Statement'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'



" ### Vim Expand Region

map <M-+> <Plug>(expand_region_expand)
map <M-_> <Plug>(expand_region_shrink)



" ### Git Gutter

" enable line highlighting by default
let g:gitgutter_highlight_lines = 1

map <leader>g :GitGutterToggle<CR>


" # Basics

" set timeoutlen=500 " max delay (ms) between multy key-stroke commands
" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=100


set wrap linebreak             " Soft wrapping without line breaks
set encoding=utf-8             " Default encoding
set backspace=indent,eol,start " Make backspace behave like other apps
set autoread                   " Reload files written outside Vim

" autoindent (see :help smartindent for more)
set autoindent
set smartindent
set cindent

" keep soft wrapping but prevent inserting line breaks on insert mode when
" going over text width
set formatoptions-=t

" treat all numerals as decimal (otherwise, using <C-a> on 007 will yield 010,
" as numbers preceeded by 0 are considered octal numbers
set nrformats=

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

" read the help for this one (currently experimenting with it)
set ttyfast

" use different ctags filenames
set tags=./tags,./.tags,tags,.tags;



" ## Backup, undo, swap and session files

set backup
set noswapfile

" Persistent undo
set undofile
set undolevels=1000
set undoreload=10000

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set viewdir=~/.vim/tmp/views//    " window views (see :h :mkview)

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
if !isdirectory(expand(&viewdir))
    call mkdir(expand(&viewdir), "p")
endif


" ## Invisible chars

set nolist  " don't display invisible characters in listchars

" list of characters to show in list mode (:set list)
set listchars=tab:▸\ ,eol:↵,extends:❯,precedes:❮

set showbreak=↪\   " prefix wrapped lines with this character (see `:set wrap`)

" toogle list chars (tabs, returns, etc.)
nnoremap <Leader>hh :set list!<CR>




" # Colors
" -----------------------------------------------------------------------------

set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set t_ut=  " fixes background incompatibility between vim and tmux

" general color theme
let g:bolero#maincolor = 'Light Blue'
" let g:bolero#maincolor = 'Deep Orange'
colorscheme bolero_dark
let g:lightline.colorscheme = 'bolero'


if has('termguicolors') && $TERM_PROGRAM ==# 'iTerm.app'
"  set t_8f=^[[38;2;%lu;%lu;%lum
"  set t_8b=^[[48;2;%lu;%lu;%lum
 set termguicolors
endif


" ## Mappings

" dark/light color scheme
" nmap <Leader>chd :colorscheme cheerfully_dark<CR>
" nmap <Leader>chl :colorscheme cheerfully_light<CR>

" or more convenient, toggle between them
nmap <Leader>C :call Cheers()<CR>


" # Spaces And Tabs
" -----------------------------------------------------------------------------

" read one line (last one) for set commands (sed in this file to fold .vimrc
" upon opening
set modelines=1

set shiftwidth=2
set tabstop=2
set softtabstop=2

" Replace tab with spaces
set expandtab



" # UI Config
" -----------------------------------------------------------------------------

syntax enable          " enable syntax highlighting

set colorcolumn=80     " visible mark at 80 characters
set textwidth=80       " define text width
set mouse=a            " Mouse on in every mode
set number             " show line numbers
set relativenumber     " display relaive numbers by default
set cursorline         " always hightlight cursor line
set foldcolumn=1       " show 3 fold levels in the gutter
" set lazyredraw         " redraw only when we need to.
set showmatch          " highlight matching [{()}]
set scrolloff=5        " number of context lines above and below the cursor
if !has('nvim')
  set ttymouse=sgr       " to allow mouse to resize panels
  let g:python2_host_prog = '/usr/local/bin/python'
endif

match ErrorMsg '\s\+$' " Highlight trailing whitespace

"saner autocomplete menu behavior
set completeopt=longest,menuone
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"nicer pane separators
set fillchars=vert:│

" ## Wildmenu

" set wildmode=list:longest
" set wildmode=longest:full,full
" set wildmode=full
set wildmode=longest:full
set wildmenu           " visual autocomplete for command menu

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

set wildignore+=*.luac                           " Lua byte code

set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=__pycache__                      " Python cache

set wildignore+=*.orig                           " Merge resolution files



" ## Mappings

" close a buffer w/o closing window
map <Leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Press space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Show syntax highlighting groups for word under cursor
" (pressing control-shift-P)
nmap <C-S-H> :call <SID>SynStack()<CR>

" toggle line numbers
nmap <Leader>l :set nonumber!<CR>

" toggle relative line numbers
nmap <Leader>r :set relativenumber!<CR>


" pretty print JSON file
nmap <Leader>json :%!python -m json.tool<CR>

" preserve selection when indenting with < & > keys
vnoremap < <gv
vnoremap > >gv


" # Tabs and splits
" -----------------------------------------------------------------------------

" defaults for where to open splitted windows
set splitright
set splitbelow

" ## Mappings

" nnoremap th    :tabprev<CR>
" nnoremap tj    :tabfirst<CR>
" nnoremap tk    :tablast<CR>
" nnoremap tl    :tabnext<CR>
" nnoremap tt    :tabedit<CR>
" nnoremap tm    :tabm<CR>
" nnoremap td    :tabclose<CR>
" nnoremap tn    :tabnew<CR>
" nnoremap <S-h> gT
" nnoremap <S-l> gt





" # Buffer management
" -----------------------------------------------------------------------------

" close all open buffers except the current one
noremap <Leader>cab :%bd\|e#<CR>


" # Editing text
" -----------------------------------------------------------------------------

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing it.
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w


" shortcuts to add/remove surrounding function (depends on vim-surround)
" delete function when cursor in arguments
nmap <Leader>daf ds(db
" delete function when cursor function name
nmap <Leader>df diwds(
" add function around word
nmap <Leader>af ysiw)i
" add function around visual selection
vmap <Leader>af S)i

" shortcuts to add/remove surrounding dict (depends on vim-surround)
" delete dict when cursor in key (thanks to Tim O'Brien)
nmap <Leader>dad ds'ds[db
" add dict around word
nmap <Leader>ad ysiw]lysiw'hi

" sane placement of the cursor for p and P
" (see https://unix.stackexchange.com/a/5061/151275)
noremap p gp
noremap P gP
noremap gp p
noremap gP P


" # Saving files

" Sudo to write
cnoremap w!! w !sudo tee % >/dev/null



" # Copy/Paste

" use the unnamed register as clipboar (instead of the default * register)
" set clipboard=unnamed


" # Utils

" Delete trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" shortcut to write and execute current python file
nmap <Leader>xp :w \| :! python %<CR>

" Source current line or visual selection
vnoremap <leader>S y:@"<CR>
nnoremap <leader>S ^vg_y:execute @@<cr>:echo 'Sourced line.'<cr>



" # Searching & Movements
" -----------------------------------------------------------------------------

set hlsearch             " highlight all search matches
set incsearch            " search as characters are entered
set ignorecase smartcase " case insensitive search

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L $
vnoremap L g_

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" make jump to mark center in screen
:map <expr> M printf('`%c zz',getchar())



" # Folding
" -----------------------------------------------------------------------------

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max




" # Autocommands
" -----------------------------------------------------------------------------

if has("autocmd")

  " " Hack to distinguish active windows from non-active ones
  " " It turns line numbers off for non-active windows.
  " augroup BgHighlight
  "   autocmd!
  "   autocmd WinEnter * set number
  "   autocmd WinLeave * set nonumber
  " augroup END


  augroup vimrc
    " clear (remove) all vimrc autocomands
    autocmd!

    "" reload .vimrc when saving it
    "autocmd! bufwritepost vimrc source %
    "" autocmd! bufwritepost .vimrc source %

    " Save when losing focus
    autocmd FocusLost * :silent! wall

    " cmake file type
    autocmd BufNewFile,BufRead CMakeLists.txt set filetype=cmake

    " FileType specific spacing and tabbing
    autocmd FileType cpp,c,hpp,h setlocal sw=2 ts=2 sts=2 expandtab
    autocmd FileType css,scss,less setlocal sw=2 ts=2 sts=2 expandtab
    autocmd FileType yaml setlocal sw=2 ts=2 sts=2 expandtab
    autocmd FileType python setlocal sw=4 ts=4 sts=4 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType cmake setlocal sw=4 ts=4 sts=4 expandtab
    autocmd FileType sql setlocal sw=4 ts=4 sts=4 expandtab

    autocmd BufNewFile,BufRead,BufEnter *.tsv setlocal autoindent noexpandtab tabstop=8 shiftwidth=8 sts=8 list nowrap

    " provide larger context for syntax highlighting (useful for html
    " files with javascript in them)
    autocmd BufEnter *.html :syntax sync fromstart

    " no line numbers in COMMIT_EDITMSG
    autocmd BufNewFile,BufRead COMMIT_EDITMSG set nonumber

    " recognize Dockerfile.* as a dockerfile
    autocmd BufNew,BufRead Dockerfile.* set filetype=dockerfile

    " run python scripts with <F5>
    autocmd BufRead *.py nmap <F5> :!python %<CR>

    " fixes .pig syntax highlighting
    autocmd BufEnter *.pig :set syntax=pig

    " use jinja fitle type for html files
    autocmd BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=htmldjango

    " make the shell a login shell
    autocmd VimEnter * :set shell=bash\ -l
    " is better to make the shell a login shel using autocmd on VimEnter
    " instead of setting shell directlyi in the vimrc file, cause setting the
    " shell in the vimrc changes the shell before loading pluggins, making
    " startup time EXTREMELY SLOW!

    " disable automatic line breaks in  markdown
    autocmd FileType markdown setlocal formatoptions-=t

  augroup END

  " augroup Coloring
  "   " Run color highlighter for cheerfully related stuff
  "   " (depends on `https://github.com/chrisbra/Colorizer`)
  "   autocmd BufEnter *cheerfully* :ColorHighlight
  "   autocmd BufEnter */.tmux/*.conf :ColorHighlight
  "   autocmd BufEnter */.tmux.conf :ColorHighlight
  " augroup END

  augroup LineNumbers
    autocmd!
    :autocmd FileType nerdtree set nonumber
    :autocmd FileType taglist set nonumber
  augroup END

  augroup PythonCustomization
    " highlight 'self.', 'self,', and 'self)'
    :autocmd FileType python syn match pythonStatement "\(\W\|^\)\@<=self\([\.,)]\)\@="
    " highlight 'cls.', 'cls,', and 'cls)'
    :autocmd FileType python syn match pythonStatement "\(\W\|^\)\@<=cls\([\.,)]\)\@="
  augroup END

  augroup LineReturn
    " Make sure Vim returns to the same line when you reopen a file.
    autocmd!
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zzzv' |
        \ endif
  augroup END

  augroup SpellChecking
    autocmd BufRead,BufNewFile *.md setlocal spell
    autocmd FileType gitcommit setlocal spell
  augroup END

  augroup autoformat_settings
  "   " autocmd FileType bzl AutoFormatBuffer buildifier
  "   " autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  "   autocmd FileType proto,javascript AutoFormatBuffer clang-format
  "   " autocmd FileType dart AutoFormatBuffer dartfmt
  "   autocmd FileType go AutoFormatBuffer gofmt
  "   " autocmd FileType gn AutoFormatBuffer gn
  "   autocmd FileType html,css,json AutoFormatBuffer js-beautify
  "   " autocmd FileType java AutoFormatBuffer google-java-format
    autocmd FileType python AutoFormatBuffer yapf
    " the next line depends on https://github.com/darold/pgFormatter
    " ... mmmmm, doesn't work cause pg_format is not a valid vim-codefmt
    " formatter. As a hacky solution you can do `:!pg_format %`
    " autocmd FileType sql AutoFormatBuffer pg_format
  augroup END

  " " Keep track of opened/closed folds in files
  " " From https://til.hashrocket.com/posts/17c44eda91-persistent-folds-between-vim-sessions
  " augroup AutoSaveFolds
  "   autocmd!
  "   " autocmd BufWinLeave *vimrc*,*.vim mkview
  "   " autocmd BufWinEnter *vimrc*,*.vim silent loadview
  "   autocmd BufWinLeave *vimrc*,*.vim execute "mkview! " . expand('<afile>:p:h') . "/." . expand('<afile>:t') . ".view"
  "   autocmd BufWinEnter *vimrc*,*.vim execute "silent! source " . expand('%:p:h') . "/." . expand('%:t') . ".view"
  " augroup END

endif




" # Backups
" -----------------------------------------------------------------------------




" # Custom Function
" -----------------------------------------------------------------------------

" Display highlight label hierarchy (useful to develop color schemes)
function! <SID>SynStack()
  if !exists("*synstack")
      return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" Folding expr to use in conjuction to `set modelines=1`
" at the bottom of a file (e.g. this .vimrc file), it will open folded using the
" specified expressions to mark open/close folds
function! MDFold(lnum)
  " expression based folding using the following fold limits:
  "
  " FOLD LEVEL 1: " # Some text
  " FOLD LEVEL 2: " ## Some text
  " FOLD LEVEL 3: " ### Some text
  "
    let line = getline(a:lnum)
    " if match(line, '^"\s*###') >= 0
    "     return '>3'
    " elseif match(line, '^"\s*##') >= 0
    "     return '>2'
    " elseif match(line, '^"\s*#') >= 0
    "     return '>1'
    " endif
    if match(line, '^"\s*#') >= 0
        return '>1'
    endif

    return '='
endfunction


" Helper function to display nicer folded text
function! FoldText()
  let foldsize = (v:foldend - v:foldstart)
  " return getline(v:foldstart).' ('.foldsize.' lines)'

  let line = getline(v:foldstart)
  let suffix = '(' . foldsize . ' lines) '

  let nucolwidth = &fdc + &number * &numberwidth
  let windowwidth = winwidth(0) - nucolwidth

  let fillcharcount = windowwidth - len(line) - len(suffix)
  " return line . '…' . repeat(" ",fillcharcount) . foldsize . '…' . ' '
  return line . repeat(".",fillcharcount) . suffix

endfunction


" Toggle between the two cheerfully_* themes (dark/light)
function! Cheers()
  " echom "CHEERS!"
  if g:colors_name ==# 'bolero_dark'
    colorscheme bolero_light
  else
    colorscheme bolero_dark
  endif
endfunction
