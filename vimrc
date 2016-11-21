" vim:foldmethod=expr:foldlevel=0:foldexpr=MDFold(v\:lnum):foldtext=FoldText()

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
set timeoutlen=500 " max delay (ms) between multy key-stroke commands
set shell=bash\ -l " use login shell, so it sources .bash_profile


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
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'gerw/vim-HiLinkTrace'
Plugin 'tpope/vim-unimpaired'
Plugin 'honza/dockerfile.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'tpope/vim-surround'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'sirver/ultisnips'
" Ultisnippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'majutsushi/tagbar'

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

set laststatus=2

let g:airline_powerline_fonts = 1
let g:airline_theme = 'cheerfully_dark'
" let g:airline_theme = 'cheerfully_light'
" let g:airline_theme = 'wombat'
" let g:airline_theme = 'murmur'
" let g:airline_theme = 'term'
" let g:airline_theme = 'badwolf'
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#bufferline#overwrite_variables = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'

" " airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''




" ### NERDTree

" file browser mapped to \p
nmap <silent> <Leader>p :execute "NERDTreeToggle" getcwd()<CR>

" ### Markdown
" Disable plasticboy/vim-markdown's folding
let g:vim_markdown_folding_disable = 1

" ### Mardown preview
" use grip (i.e. GitHub flavored markdown, I think)
let vim_markdown_preview_github=1


" ### NERDCommenter
let g:NERDDefaultAlign = 'left'
" add extrace space after comment character, for every language
let NERDSpaceDelims = 1

" ### Syntastic
let g:syntastic_enable_python_checker = 1
let g:syntastic_python_checkers = ['pycodestyle']
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["cpp", "c", "hpp", "h"] }


" ### UltiSnips

" Custom snippets location
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

" use google style docstrings
let g:ultisnips_python_style = "google"


" ### Bufferline

" let g:bufferline_active_highlight = 'StatusLineNC'
" let g:bufferline_inactive_highlight = 'StatusLine'
let g:bufferline_active_highlight = 'ActiveBuffer'
let g:bufferline_inactive_highlight = 'InactiveBuffer'



" ### Tagbar

" toggle tag bar
nmap <Leader>tb :TagbarToggle<CR>




" # Colors
" -----------------------------------------------------------------------------

set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors

colorscheme cheerfully_dark
" colorscheme cheerfully_light

" ## Mappings

" dark/light color scheme
nmap <Leader>chd :colorscheme cheerfully_dark<CR>
nmap <Leader>chl :colorscheme cheerfully_light<CR>

" or more conviente, toggle between them
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
set cursorline         " always hightlight cursor line
set foldcolumn=3       " show 3 fold levels in the gutter
set wildmenu           " visual autocomplete for command menu
" set lazyredraw         " redraw only when we need to.
set showmatch          " highlight matching [{()}]
set scrolloff=5        " number of context lines above and below the cursor

match ErrorMsg '\s\+$' " Highlight trailing whitespace

" ## Mappings

" close a buffer w/o closing window
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Press space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Show syntax highlighting groups for word under cursor
" (pressing control-shift-P)
nmap <C-S-H> :call <SID>SynStack()<CR>

" toggle line numbers
nmap <leader>l :set nonumber!<CR>




" # Tabs and splits
" -----------------------------------------------------------------------------

" defaults for where to open splitted windows
set splitright
set splitbelow

" ## Mappings

nnoremap th    :tabprev<CR>
nnoremap tj    :tabfirst<CR>
nnoremap tk    :tablast<CR>
nnoremap tl    :tabnext<CR>
nnoremap tt    :tabedit<CR>
nnoremap tm    :tabm<CR>
nnoremap td    :tabclose<CR>
nnoremap tn    :tabnew<CR>
nnoremap <S-h> gT
nnoremap <S-l> gt






" # Buffer management
" -----------------------------------------------------------------------------




" # Editing text
" -----------------------------------------------------------------------------

set wrap linebreak nolist      " Soft wrapping without line breaks
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

" ## Mappings

" Delete trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" shortcut to write and execute current python file
nmap <leader>xp :w \| :! python %<CR>




" # Searching
" -----------------------------------------------------------------------------

set hlsearch  " highlight all seardh matches
set incsearch " search as characters are entered




" # Folding
" -----------------------------------------------------------------------------

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max




" # Autogroups
" -----------------------------------------------------------------------------

" Hack to distinguish active windows from non-active ones
" It turns line numbers off for non-active windows.
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set number
    autocmd WinLeave * set nonumber
augroup END





" # Autocommands
" -----------------------------------------------------------------------------

if has("autocmd")
  " FileType specific spacing and tabbing
  autocmd FileType cpp,c,hpp,h setlocal sw=2 ts=2 sts=2 expandtab
  autocmd FileType css,scss,less setlocal sw=2 ts=2 sts=2 expandtab
  autocmd FileType yaml setlocal sw=2 ts=2 sts=2 expandtab
  autocmd FileType python setlocal sw=4 ts=4 sts=4 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab

  " no line numbers in COMMIT_EDITMSG
  autocmd BufNewFile,BufRead COMMIT_EDITMSG set nonumber

  " recognize Dockerfile.* as a dockerfile
  au BufNew,BufRead Dockerfile.* set filetype=dockerfile

  " run python scripts with <F5>
  autocmd BufRead *.py nmap <F5> :!python %<CR>
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
  return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction


" Toggle between the two cheerfully_* themes (dark/light)
function! Cheers()
  if g:airline_theme == 'cheerfully_dark'
    let g:airline_theme = 'cheerfully_light'
    colorscheme cheerfully_light
  else
    let g:airline_theme = 'cheerfully_dark'
    colorscheme cheerfully_dark
  endif
endfunction



