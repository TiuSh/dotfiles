set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins (vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" My plugins

" IDE
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
" Plug 'linjiX/LeaderF-git'
Plug 'TiuSh/LeaderF-git'
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/denite.nvim'
Plug 'easymotion/vim-easymotion'
" TODO: Replace with svermeulen/vim-cutlass & svermeulen/vim-subversive
Plug 'svermeulen/vim-easyclip'
Plug 'neovim/python-client'
Plug 'terryma/vim-multiple-cursors'
" Plug 'itchyny/calendar.vim'
Plug 'tpope/vim-unimpaired'
" Plug 'simeji/winresizer'
Plug 'gcmt/taboo.vim'
Plug 'Valloric/ListToggle'
Plug 'zirrostig/vim-schlepp'
Plug 'wincent/ferret'

" Themes
Plug 'frankier/neovim-colors-solarized-truecolor-only'

" TMUX
Plug 'tmux-plugins/vim-tmux'

" VCS (Git/SVN/...)
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'

" All languages
" Plug 'sheerun/vim-polyglot' TODO: Test
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Coc Plugins are installed via `CocInstall`
" Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-solargraph', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-stylelint', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tslint-plugin', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/argtextobj.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'glts/vim-textobj-comment'
Plug 'TiuSh/vim-toggline'
Plug 'vim-test/vim-test'
Plug 'hashivim/vim-terraform'

" Markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" HTML
Plug 'mattn/emmet-vim'

" CSS
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'css' }

" Javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx', { 'for': 'javascript' }

" Typescript
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'ianks/vim-tsx', { 'for': 'typescript' }

" Svelte
Plug 'evanleck/vim-svelte', { 'branch': 'main' }

" GraphQL
Plug 'jparise/vim-graphql'

" Python
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" Ruby / Rails
Plug 'tek/vim-textobj-ruby'
" Plug 'tpope/vim-rails', { 'on': [
      " \ 'Rake',
      " \ 'Rails',
      " \ 'A',
      " \ 'R',
      " \ 'Emodel',
      " \ 'Eview',
      " \ 'Econtroller',
      " \ 'Smodel',
      " \ 'Sview',
      " \ 'Scontroller',
      " \ 'Vmodel',
      " \ 'Vview',
      " \ 'Vcontroller',
      " \ 'Tmodel',
      " \ 'Tview',
      " \ 'Tcontroller',
      " \ 'Rexctract'
      " \ ] }

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin indent on

" Sets how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <silent> <leader>w :w!<cr>

" Open .vimrc file
nmap <silent> <leader>v :tabedit $MYVIMRC<cr>

" Reload .vimrc file
nmap <silent> <Leader>vr :source $MYVIMRC<cr>

" Reload file in current buffer
nmap <silent> <leader>e :e!<cr>

" Use the system clipboard by default
set clipboard=unnamed

" Allow per-project configuration file (.vimrc / .nvimrc)
set exrc

" Remove ex-mode mapping
nnoremap Q <nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore files
set wildignore=*.o,*~,*.pyc                      " Compile
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=.DS_Store                        " OSX
set wildignore+=*.obj,*.rbc,*.class,*.gem        " Disable output and VCS files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz " Disable archive files
set wildignore+=*.meteor                         " Other stuff...

" Show relative line numbers
set number
set relativenumber

" Show column number
set ruler

" Highlight current line
set cursorline

" Show incomplete command in lower right corner
set showcmd

" Hide mode (shown in status bar)
set noshowmode

" Command line height
set cmdheight=1

" Hide unused buffers
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" When searching try to be smart about cases
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Improves smoothness of redrawing
set ttyfast

" Enable mouse
if !has('nvim')
  set mouse=a
  set ttymouse=sgr
endif

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" vim-javascript plugin fix (only if VIM version is under 7.4 patch 1-7)
" set regexpengine=1

" Set utf8 as standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Opens splits on right and below
set splitright
set splitbelow

" Updatetime for CursorHold & CursorHoldI
set updatetime=300

" Don't give |ins-completion-menu| messages.
set shortmess+=c

" Always show signcolumns
set signcolumn=yes

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" One theme options
" let g:one_allow_italics=1

" Color Scheme
set background=dark
" colorscheme solarized8_high
colorscheme solarized

" Enable true color support
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Maximum line length
set colorcolumn=80

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set guitablabel=%M\ %t
endif

" Cursor styling
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowritebackup
set nowb
set noswapfile

" Allow netrw to remove non-empty directories
let g:netrw_localrmdir='rm -r'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" No line break
set nolbr

set ai "Auto indent
set si "Smart indent
set nowrap "No wrap lines

" Show tabs & trailing spaces
set list
set listchars=""          " reset listchars
set listchars=tab:‣\      " display tabs with a sign
" set listchars+=nbsp:·     " display whitespaces with a dot
set listchars+=trail:·    " display trailing whitespaces with a dot
" set listchars+=eol:↵      " display EOL character
set listchars+=extends:»  " right wrap
set listchars+=precedes:« " left wrap

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" PHP indentation
autocmd FileType php,*.twig setlocal shiftwidth=4 tabstop=4


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<cr>
vnoremap <silent> # :call VisualSelection('b')<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search)
" map <space> /

" Disable highlight when <leader><space> is pressed
map <silent> <leader><space> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Open split windows
map <C-s> :split<cr>
map <C-s>v :vsplit<cr>

" With terminal
map <C-s>t :split\|terminal<cr>
map <C-s>vt :vsplit\|terminal<cr>

" Close window
map <leader>q :close<cr>

" Close the current buffer
" map <leader>bc :BD<cr>

" Close all the buffers
map <leader>ba :%bdelete<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" With terminal
map <leader>tnt :tabnew\|terminal<cr>

map <D-h> gT
map <D-l> gt
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab
  ",newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap <Esc> in insert mode to "jk"
inoremap jk <Esc>

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <D-j> mz:m+<cr>`z
nmap <D-k> mz:m-2<cr>`z
vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => netrw mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
    noremap <buffer> <leader>c :!cp -r
    noremap <buffer> <leader>m :!mv
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Terminal mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  " Remap also in terminal mode
  tnoremap jk <C-\><C-n>

  " Move between windows when in terminal mode
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-l> <C-\><C-n><C-w>l

  " Terminal ctrl commands
  tnoremap <leader>l <C-l>
  tnoremap <leader>c <C-c>

  " Automatically start insert mode when entering terminal window
  autocmd BufWinEnter,WinEnter term://* startinsert
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetypes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Consider .scss files as CSS
autocmd BufNewFile,BufRead *.scss setlocal filetype=scss.css

" Tsx files
" autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript

" YAML files
autocmd BufNewFile,BufRead *.yaml,*.yml setlocal filetype=yaml

" Vagrantfile
autocmd BufNewFile,BufRead Vagrantfile setlocal filetype=ruby

" Axlsx-Rails view files
autocmd BufNewFile,BufRead *.axlsx setlocal filetype=ruby

" Rails Jbuilder files
autocmd BufNewFile,BufRead *.jbuilder setlocal filetype=ruby


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => The Silver Searcher
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Define :AgCmd command
  command -nargs=+ -complete=file -bar AgCmd silent! grep! <args>|cwindow|redraw!

  " Find TODOs comments
  noremap <leader>td :AgCmd TODO<cr>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omicomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType php setlocal omnifunc=phpcd#CompletePHP
" autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-v><cr>//ge<cr>'tzt'm

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""" PLUGINS """""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader>n :NERDTreeToggle<cr>

let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$']
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden = 1

augroup AuNERDTreeCmd
autocmd AuNERDTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
autocmd AuNERDTreeCmd FocusGained * call s:UpdateNERDTree()

" If the parameter is a directory, cd into it
function s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif

  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif

  if directory
    NERDTree
    wincmd p
    bd
  endif

  if explicitDirectory
    wincmd p
  endif
endfunction

" NERDTree utility function
function s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<cr>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Sayonara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader>bc :Sayonara!<cr>

" Show confirm before quit
let g:sayonara_confirm_quit = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LeaderF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_ShortcutF = "<C-P>"

" Don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1

" Popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }

" Icons
let g:Lf_ShowDevIcons = 0
let g:Lf_DevIconsFont = "FiraCode Nerd Font Mono"
" set ambiwidth=double

let g:Lf_PopupPalette = {
    \  'dark': {
    \      'Lf_hl_popup_inputText': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': 'NONE',
    \                'guibg': '#073642',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': '235'
    \              },
    \      'Lf_hl_popup_window': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': 'NONE',
    \                'guibg': '#002b36',
    \                'cterm': 'NONE',
    \                'ctermfg': 'NONE',
    \                'ctermbg': '234'
    \              },
    \      'Lf_hl_popup_lineInfo': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': '#eee8d5',
    \                'guibg': '#839496',
    \                'cterm': 'NONE',
    \                'ctermfg': '254',
    \                'ctermbg': '244'
    \              },
    \      'Lf_hl_cursorline': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': '#eee8d5',
    \                'guibg': 'NONE',
    \                'cterm': 'NONE',
    \                'ctermfg': '254',
    \                'ctermbg': 'NONE'
    \              },
    \      'Lf_hl_match': {
    \                'gui': 'bold',
    \                'font': 'NONE',
    \                'guifg': '#b58900',
    \                'guibg': 'NONE',
    \                'cterm': 'bold',
    \                'ctermfg': '136',
    \                'ctermbg': 'NONE'
    \              },
    \      'Lf_hl_match0': {
    \                'gui': 'bold',
    \                'font': 'NONE',
    \                'guifg': '#268bd2',
    \                'guibg': 'NONE',
    \                'cterm': 'bold',
    \                'ctermfg': '33',
    \                'ctermbg': 'NONE'
    \              },
    \      'Lf_hl_match1': {
    \                'gui': 'bold',
    \                'font': 'NONE',
    \                'guifg': '#cb4b16',
    \                'guibg': 'NONE',
    \                'cterm': 'bold',
    \                'ctermfg': '166',
    \                'ctermbg': 'NONE'
    \              },
    \      'Lf_hl_match2': {
    \                'gui': 'bold',
    \                'font': 'NONE',
    \                'guifg': '#d33682',
    \                'guibg': 'NONE',
    \                'cterm': 'bold',
    \                'ctermfg': '125',
    \                'ctermbg': 'NONE'
    \              },
    \      'Lf_hl_match3': {
    \                'gui': 'bold',
    \                'font': 'NONE',
    \                'guifg': '#859900',
    \                'guibg': 'NONE',
    \                'cterm': 'bold',
    \                'ctermfg': '64',
    \                'ctermbg': 'NONE'
    \              },
    \      'Lf_hl_match4': {
    \                'gui': 'bold',
    \                'font': 'NONE',
    \                'guifg': '#2aa198',
    \                'guibg': 'NONE',
    \                'cterm': 'bold',
    \                'ctermfg': '37',
    \                'ctermbg': 'NONE'
    \              },
    \      'Lf_hl_rgHighlight': {
    \                'gui': 'NONE',
    \                'font': 'NONE',
    \                'guifg': '#002b36',
    \                'guibg': '#b58900',
    \                'cterm': 'NONE',
    \                'ctermfg': '234',
    \                'ctermbg': '136'
    \              },
    \      },
    \  }

" FIXME
" let g:Lf_CommandMap = {
    " \      '<C-V>': ['<C-P>'],
    " \      '<C-S>': ['<C-M>'],
    " \      '<C-X>': ['<C-S>'],
    " \      '<C-]>': ['<C-V>'],
    " \  }

noremap <C-B> :<C-U>Leaderf buffer<CR>
noremap <C-T> :<C-U>Leaderf bufTag<CR>
noremap <SPACE> :<C-U>Leaderf line<CR>

" Search with Rg
noremap <C-F> :<C-U>Leaderf! rg -e<SPACE>
xnoremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR><CR>
" Open last search
noremap <C-F><C-F> :<C-U>Leaderf! rg --recall<CR>

" Git specific
noremap <C-G>gb :<C-U>Leaderf branch -a<CR>
noremap <C-G>gc :<C-U>Leaderf commit<CR>
noremap <C-G>gf :<C-U>Leaderf bcommit<CR>
noremap <C-G>gs :<C-U>Leaderf gstatus<CR>

" Rails specific
noremap <C-G>rc :<C-U>LeaderfFile app/controllers<CR>
noremap <C-G>rv :<C-U>LeaderfFile app/views<CR>
noremap <C-G>rm :<C-U>LeaderfFile app/models<CR>
noremap <C-G>rs :<C-U>LeaderfFile spec<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CamelCaseMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use <leader>. as a prefix for easymotion commands
map <Leader>. <Plug>(easymotion-prefix)

" Enable default mappings
let g:EasyMotion_do_mapping = 1

" Jump to anywhere you want with minimal keystrokes
" `s{char}{char}{label}`
nmap <Leader>.s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>.j <Plug>(easymotion-j)
map <Leader>.k <Plug>(easymotion-k)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyClip
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" m mapping is now used by the 'cut' command
" so we move the 'add mark' command
nnoremap <leader>m m

" Toggle auto formatting
nmap <leader>cf <plug>EasyClipToggleFormattedPaste

" Interactive pasting
nmap <leader>p :IPaste<cr>
nmap <leader>P :IPasteBefore<cr>

" Insert mode pasting
imap <c-v> <plug>EasyClipInsertModePaste

" Auto format when pasting
let g:EasyClipAutoFormat = 1

" Save yanks to a shared file
let g:EasyClipShareYanks = 1

" Substitute operator (mapped to 's')
let g:EasyClipUseSubstituteDefaults = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Taboo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:taboo_tab_format = '%m %N. %f [%W] '
let g:taboo_renamed_tab_format = '%m %N. %l [%W] '

nnoremap <leader>tr :TabooRename<Space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ListToggle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle location list & quick fix with G+C/L
let g:lt_location_list_toggle_map = 'gl'
let g:lt_quickfix_list_toggle_map = 'gc'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Schlepp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move visual blocks / lines with K/J/H/L
vmap <unique> K <Plug>SchleppUp
vmap <unique> J <Plug>SchleppDown
vmap <unique> H <Plug>SchleppLeft
vmap <unique> L <Plug>SchleppRight

" Duplicate visual block / line under cursor
vmap <unique> D <Plug>SchleppDup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ferret
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:FerretNvim = 1
let g:FerretMap = 0

" nnoremap <C-f> :Ack<Space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom mappings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gaa :Git add -A<CR>
nnoremap <leader>gst :exec magit#show_magit('c')<CR>
nnoremap <leader>gcs :Commits<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
" nnoremap <leader>gco :FzfCheckout<CR>
nnoremap <leader>gcb :Git checkout -b<Space>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gpsf :Gpush -f<CR>
nnoremap <leader>gl :Gpull origin $(git rev-parse --abbrev-ref HEAD)<CR>
" nnoremap <leader>gup :FzfPullRebase<CR>
nnoremap <leader>gfa :Gfetch<CR>
nnoremap <leader>gsta :Git stash<CR>
nnoremap <leader>gstp :Git stash pop<CR>
" nnoremap <leader>gstl :FzfStash<CR>
nnoremap <leader>glog :GV<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERD Commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <leader>cc <C-\><C-O>:call NERDComment('n', 'comment')<cr>
inoremap <leader>cu <C-\><C-O>:call NERDComment('n', 'uncomment')<cr>
inoremap <leader>c<space> <C-\><C-O>:call NERDComment('n', 'toggle')<cr>

" Add / remove 1 space after comment delimiter
let g:NERDSpaceDelims = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Conquer Of Completion (coc)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for rename current word
nmap <leader>ar <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>af  <Plug>(coc-format-selected)
nmap <leader>af  <Plug>(coc-format-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>aq  <Plug>(coc-fix-current)

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Airline integration
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore snippets included in plugins
let g:UltiSnipsSnippetDirectories = [$HOME."/.config/nvim/UltiSnips"]

" Complete snippets with <leader>s and navigate with <leader>n/p
let g:UltiSnipsExpandTrigger = "<leader>s"
let g:UltiSnipsJumpForwardTrigger = "<leader>n"
let g:UltiSnipsJumpBackwardTrigger = "<leader>p"

" Edit snippets in a new tab
let g:UltiSnipsEditSplit = "tabdo"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Toggline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add comma or semicolon at the end of line or expresion
nmap <silent> <leader>, :call toggline#End(',')<cr>
nmap <silent> <leader>; :call toggline#End(';')<cr>
inoremap <silent> <leader>, <C-\><C-O>:call toggline#End(',')<cr>
inoremap <silent> <leader>; <C-\><C-O>:call toggline#End(';')<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Test.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let test#strategy = "neovim"

nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>R :TestFile<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Emmet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_mode = 'a'
let g:user_emmet_leader_key = '<C-z>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSDoc syntax highlighting
let g:javascript_plugin_jsdoc = 1

" Flow syntax highlighting
let g:javascript_plugin_flow = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim JSX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nvim Typescript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display type info in echo area on hold
let g:nvim_typescript#type_info_on_hold = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Project configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Try to load a '.vimlocal' file from project
silent! so .vimrc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Security
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Prevent autocmd, shell and write commands from being run inside project-specific files
set secure
