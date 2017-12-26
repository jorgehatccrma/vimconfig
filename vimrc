" vim:foldmethod=expr:foldlevel=0:foldexpr=MDFold(v\:lnum):foldtext=FoldText()

" Tips to navigate this file
"
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

" Install Vundle if not installed (adapted from
" http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/ )
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif


filetype off                  " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'gerw/vim-HiLinkTrace'
Plugin 'tpope/vim-unimpaired'
Plugin 'honza/dockerfile.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-obsession'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'sirver/ultisnips'
" Ultisnippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-bufferline'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'othree/html5-syntax.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'motus/pig.vim'
Plugin 'danro/rename.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'moll/vim-node'
" Plugin 'wookiehangover/jshint.vim'
" Plugin 'walm/jshint.vim'
" Plugin 'Shutnik/jshint2.vim'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
" Plugin 'dodie/vim-disapprove-deep-indentation'

" Google's code formatting tools
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

" LaTeX
Plugin 'lervag/vimtex'
Plugin 'matze/vim-tex-fold'

" expanded targets and text objects. See
" http://owen.cymru/vim-text-objects-extend-vims-natural-language-2/
Plugin 'wellle/targets.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-indent'
Plugin 'sgur/vim-textobj-parameter'
Plugin 'bps/vim-textobj-python'
Plugin 'libclang-vim/vim-textobj-clang'

" Simple buffer explorer
Plugin 'jeetsukumaran/vim-buffergator'

Plugin 'Glench/Vim-Jinja2-Syntax'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




" ## Plugin configs

" Add plugin customizations/configurations here

" " ### Powerline

" let g:Powerline_symbols = 'fancy'
" set laststatus=2
" call Pl#Theme#RemoveSegment('fileencoding')
" call Pl#Theme#RemoveSegment('fileformat')

"
" ### Airline

" set laststatus=2

" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'cheerfully_dark'
" " let g:airline_theme = 'cheerfully_light'
" " let g:airline_theme = 'wombat'
" " let g:airline_theme = 'murmur'
" " let g:airline_theme = 'term'
" " let g:airline_theme = 'badwolf'
" let g:airline#extensions#bufferline#enabled = 0
" let g:airline#extensions#bufferline#overwrite_variables = 0

" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif

" " " unicode symbols
" " let g:airline_left_sep = '»'
" " let g:airline_left_sep = '▶'
" " let g:airline_right_sep = '«'
" " let g:airline_right_sep = '◀'
" " let g:airline_symbols.linenr = '␊'
" " let g:airline_symbols.linenr = '␤'
" " let g:airline_symbols.linenr = '¶'
" " let g:airline_symbols.branch = '⎇'
" " let g:airline_symbols.paste = 'ρ'
" " let g:airline_symbols.paste = 'Þ'
" " let g:airline_symbols.paste = '∥'
" " let g:airline_symbols.whitespace = 'Ξ'

" " " airline symbols
" " let g:airline_left_sep = ''
" " let g:airline_left_alt_sep = ''
" " let g:airline_right_sep = ''
" " let g:airline_right_alt_sep = ''
" " let g:airline_symbols.branch = ''
" " let g:airline_symbols.readonly = ''
" " let g:airline_symbols.linenr = ''


" ### Lightline

set noshowmode
set laststatus=2

" \   'separator': { 'left': '', 'right': '' },
" \   'subseparator': { 'left': '│', 'right': '│'},
let g:lightline = {
    \   'separator': { 'left': '', 'right': '' },
    \   'subseparator': { 'left': '│', 'right': '│'},
    \   'component_function': {
    \     'filename': 'LightlineFilename',
    \     'modified': 'LightlineModified',
    \     'mode': 'LightlineMode',
    \     'filetype': 'LightlineFiletype',
    \     'fileencoding': 'LightlineFileencoding',
    \     'fileformat': 'LightlineFileformat',
    \   },
    \   'active': {
    \     'left': [['mode', 'paste'], [], ['readonly', 'filename']],
    \     'right': [['modified'], ['filetype', 'fileencoding','fileformat', 'lineinfo']],
    \   },
    \   'inactive': {
    \     'left': [[], [], ['filename']],
    \     'right': [[], ['lineinfo']],
    \   },
    \   'tabline_separator': {
    \     'left': '???',
    \     'right': '!!!',
    \   }
    \ }

function! LightlineFilename()
  return winwidth(0) > 120 ? expand('%:p') : expand('%:t')
endfunction

function! LightlineModified()
  return &mod ? '*' : ''
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



" ### NERDTree

" file browser mapped to \p
nmap <silent> <Leader>p :execute "NERDTreeToggle" getcwd()<CR>

" hightlight current file on the tree
nmap <Leader>f :NERDTreeFind<CR>

" ### Markdown
" Disable plasticboy/vim-markdown's folding
let g:vim_markdown_folding_disable = 1

" ### Mardown preview

" use grip (i.e. GitHub flavored markdown, I think)
let g:vim_markdown_preview_github=1
let g:vim_markdown_preview_hotkey='<C-m>'
" let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_browser='Opera'


" ### Minimap

let g:minimap_toggle='<leader>mm'


" ### NERDCommenter
let g:NERDDefaultAlign = 'left'
" let g:NERDDefaultAlign = 'start'

" add extrace space after comment character, for every language
let NERDSpaceDelims = 1

" change comment character for .ini files
let g:NERDCustomDelimiters = {
    \ 'text': { 'left': '#'}
\ }

" Hide certain files and folders
let NERDTreeIgnore=['__pycache__$[[dir]]', '\.pyc$[[file]]']

" ### Syntastic
let g:syntastic_enable_python_checker = 1
" let g:syntastic_python_checkers = ['pycodestyle', 'flake8']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
      \ "mode": "active",
      \ "passive_filetypes": [
            \ "cpp", "c",
            \ "hpp", "h",
            \ ] }

" see https://github.com/jasonlong/dotfiles/blob/master/vimrc for more ignores
let g:syntastic_html_tidy_ignore_errors = [
            \ "<svg> is not recognized!",
            \ "discarding unexpected <svg>",
            \ "discarding unexpected </svg>",
            \ ]

" use jshint
" let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_checkers = ['eslint']

" ignore some html warnings/errors
let g:syntastic_html_tidy_ignore_errors= [
      \ "'<' + '/' + letter not allowed here",
      \ "<svg> is not recognized!",
      \ "discarding unexpected <svg>",
      \ "discarding unexpected </svg>",
      \ "<input> proprietary attribute \"min\"",
      \ "<input> proprietary attribute \"max\"",
      \ "<input> proprietary attribute \"oninput\"",
      \]

let g:syntastic_quiet_messages = {
      \ "regex": ".*['.*'] is better written in dot notation."
      \}

let g:flake8_ignore="E402,E501"


" ### UltiSnips

" Custom snippets location
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

" use google style docstrings
let g:ultisnips_python_style = "google"


" ### Bufferline

" custom highlight groups to ingrate with vim-airline/theme/cheerfully*
let g:bufferline_active_highlight = 'ActiveBuffer'
let g:bufferline_inactive_highlight = 'InactiveBuffer'



" ### Buffergator

" Remove buffergator key mappings
let g:buffergator_suppress_keymaps = 1

" replace buffer gator's default Open mapping with Toggle
map <Leader>b :BuffergatorToggle<CR>



" ### Tagbar

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


" ## Backup, undo and swap files

set backup
set noswapfile

" Persistent undo
set undofile
set undolevels=1000
set undoreload=10000

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files

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
colorscheme cheerfully_dark
" colorscheme cheerfully_light

" lightline color scheme
let g:lightline.colorscheme = 'cheerfully_dark'

if has('termguicolors') && $TERM_PROGRAM ==# 'iTerm.app'
"  set t_8f=^[[38;2;%lu;%lu;%lum
"  set t_8b=^[[48;2;%lu;%lu;%lum
 set termguicolors
endif


" ## Mappings

" dark/light color scheme
nmap <Leader>chd :colorscheme cheerfully_dark<CR>
nmap <Leader>chl :colorscheme cheerfully_light<CR>

" or more convenient, toggle between them
nmap <Leader>c :call Cheers()<CR>


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
set foldcolumn=3       " show 3 fold levels in the gutter
" set lazyredraw         " redraw only when we need to.
set showmatch          " highlight matching [{()}]
set scrolloff=5        " number of context lines above and below the cursor

match ErrorMsg '\s\+$' " Highlight trailing whitespace

"saner autocomplete menu behavior
set completeopt=longest,menuone
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"nicer pane separators
set fillchars=vert:│

" ## Wildmenu

set wildmenu           " visual autocomplete for command menu
" set wildmode=list:longest
" set wildmode=longest:full,full
set wildmode=full

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

set hlsearch             " highlight all seardh matches
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
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab
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

    " disbale automatic line breaks in  markdown
    autocmd FileType markdown setlocal formatoptions-=t

  augroup END

  augroup Comments
    autocmd FileType * let g:NERDDefaultAlign='left'
    autocmd FileType dosini let g:NERDDefaultAlign='start'
  augroup END

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

  " augroup autoformat_settings
  "   " autocmd FileType bzl AutoFormatBuffer buildifier
  "   " autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  "   autocmd FileType proto,javascript AutoFormatBuffer clang-format
  "   " autocmd FileType dart AutoFormatBuffer dartfmt
  "   autocmd FileType go AutoFormatBuffer gofmt
  "   " autocmd FileType gn AutoFormatBuffer gn
  "   autocmd FileType html,css,json AutoFormatBuffer js-beautify
  "   " autocmd FileType java AutoFormatBuffer google-java-format
  "   autocmd FileType python AutoFormatBuffer yapf
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
  echom "CHEERS!"
  if g:colors_name ==# 'cheerfully_dark'
    if exists('g:airline_theme')
      let g:airline_theme = 'cheerfully_light'
    endif
    colorscheme cheerfully_light
  else
    if exists('g:airline_theme')
      let g:airline_theme = 'cheerfully_dark'
    endif
    colorscheme cheerfully_dark
  endif
endfunction
