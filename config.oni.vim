set nocompatible

call plug#begin('~/.config/oni/plugged')

" IDE
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-repeat'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'easymotion/vim-easymotion'
Plug 'svermeulen/vim-easyclip'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'gcmt/taboo.vim'
Plug 'Valloric/ListToggle'
" Plug 'lifepillar/vim-solarized8'
Plug 'eugen0329/vim-esearch'
" Plug 'itchyny/vim-cursorword'
Plug 't9md/vim-quickhl'
" Plug 'kana/vim-operator-user'

" VCS
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'

" All languages
Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'glts/vim-textobj-comment'
Plug 'TiuSh/vim-toggline'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin indent on

" Enable syntax highlighting
syntax enable

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

" Reload file in current buffer
nmap <silent> <leader>e :e!<cr>

" Use the system clipboard by default
" set clipboard=unnamed

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

" Show relative line numbers
set number
set relativenumber

" Show column number
set noruler

" Highlight current line
set cursorline

" Hide incomplete command
set noshowcmd

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

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Set utf8 as standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Opens splits on right and below
set splitright
set splitbelow

" Maximum line length
set colorcolumn=80

" Hide status line
set laststatus=0

" Enable mouse
set mouse=a

" Color theme
" set background=dark
" colorscheme solarized8_high

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Allow netrw to remove non-empty directories
let g:netrw_localrmdir='rm -r'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
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

" Disable highlight when <leader><space> is pressed
map <silent> <leader><space> :noh<cr><Plug>(quickhl-manual-reset)

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

map <A-h> gT
map <A-l> gt
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
  set switchbuf=useopen,usetab,newtab
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap <Esc> in insert mode to "jk"
inoremap jk <Esc>

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nnoremap <M-j> mz:m+<cr>`z
nnoremap <M-k> mz:m-2<cr>`z
vnoremap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Add new line before or after cursor using SHIFT+ALT+RET/ALT+RET or
" SHIFT+CMD+RET/CMD+RET
nnoremap <S-M-CR> mzO<ESC>`z
nnoremap <M-CR> mzo<ESC>`z
inoremap <S-M-CR> <ESC>mzO<ESC>`za
inoremap <M-CR> <ESC>mzo<ESC>`za

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetypes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Consider .scss files as CSS
autocmd BufNewFile,BufRead *.scss setlocal filetype=scss.css

" Tsx files
autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" YAML files
autocmd BufNewFile,BufRead *.yaml,*.yml setlocal filetype=yaml

" Vagrantfile
autocmd BufNewFile,BufRead Vagrantfile setlocal filetype=ruby

" Axlsx-Rails view files
autocmd BufNewFile,BufRead *.axlsx setlocal filetype=ruby


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
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|meteor)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
\ }
let g:ctrlp_buftag_types = {
  \ 'yaml': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ 'css': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ 'typescript': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ 'coffee': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ 'javascript': {
  \   'bin': 'ctags',
  \   'args': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ },
\ }
let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
  \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
  \ 'PrtHistory(-1)':       ['<c-k>'],
  \ 'PrtHistory(1)':        ['<c-j>'],
\ }

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --hidden --ignore ".git/" -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

map <C-b> :CtrlPBuffer<cr>
map <C-t> :CtrlPBufTag<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Space> :BLines<cr>
nnoremap <C-f> :Ag<Space>

" FzfCheckout command
function! s:fzf_checkout_sink(line)
  let remote = matchstr(a:line, '^\s*remotes\/')

  if !empty(remote)
    let branch = matchstr(a:line, '[^\/]*$')

    execute 'Dispatch git checkout -b ' . branch . ' ' . a:line
  else
    execute 'Dispatch git checkout' . a:line
  endif
endfunction

command! -bang -nargs=* FzfCheckout
      \ call fzf#run(fzf#wrap('FzfCheckout', {
      \     'source': 'git branch -a',
      \     'sink': function('s:fzf_checkout_sink'),
      \     'options': ['--ansi', '--prompt', 'Select Branch> ',
      \                 '--color', 'hl:68,hl+:110']
      \ }), <bang>0)


" FzfPullRebase command
function! s:fzf_pull_rebase_sink(line)
  let remote_branch = substitute(substitute(a:line, '\/', ' ', ''), '^\s*', '', '')

  execute 'Dispatch git pull --rebase ' . remote_branch
endfunction

command! -bang -nargs=* FzfPullRebase
      \ call fzf#run(fzf#wrap('FzfPullRebase', {
      \     'source': 'git branch -r',
      \     'sink': function('s:fzf_pull_rebase_sink'),
      \     'options': ['--ansi', '--prompt', 'Select Branch> ',
      \                 '--color', 'hl:68,hl+:110']
      \ }), <bang>0)

" FzfStash command
function! s:fzf_stash_sink(line)
  let stash = matchstr(a:line, '^\s*stash{\d*}')

  execute 'Git stash apply ' . stash
endfunction

command! -bang -nargs=* FzfStash
      \ call fzf#run(fzf#wrap('FzfStash', {
      \     'source': 'git stash list',
      \     'sink': function('s:fzf_stash_sink'),
      \     'options': ['--ansi', '--prompt', 'Select Stash> ',
      \                 '--color', 'hl:68,hl+:110']
      \ }), <bang>0)

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
" Toggle location list & quick fix with Ctrl+L/Q
let g:lt_location_list_toggle_map = 'gl'
let g:lt_quickfix_list_toggle_map = 'gc'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom mappings
" nnoremap <leader>gs :Gstatus<CR>
" nnoremap <leader>ge :Gedit<CR>
" nnoremap <leader>gr :Gread<CR>
" nnoremap <leader>gw :Gwrite<CR><CR>
" nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
" nnoremap <leader>gp :Ggrep<Space>
" nnoremap <leader>gm :Gmove<Space>
" nnoremap <leader>gb :Git branch<Space>
" nnoremap <leader>go :Git checkout<Space>
" nnoremap <leader>grb :Git rebase origin<Space>
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gaa :Git add -A<CR>
nnoremap <leader>gst :exec magit#show_magit('c')<CR>
nnoremap <leader>gcs :Commits<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gco :FzfCheckout<CR>
nnoremap <leader>gcb :Git checkout -b<Space>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gpsf :Gpush -f<CR>
nnoremap <leader>gl :Gpull origin $(git rev-parse --abbrev-ref HEAD)<CR>
nnoremap <leader>gup :FzfPullRebase<CR>
nnoremap <leader>gfa :Gfetch<CR>
nnoremap <leader>gsta :Git stash<CR>
nnoremap <leader>gstp :Git stash pop<CR>
nnoremap <leader>gstl :FzfStash<CR>
nnoremap <leader>glog :GV<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change gutter signs
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" Enable airline support
let g:airline#extensions#ale#enabled = 1

" Fix files on save
let g:ale_fix_on_save = 1

" Linters
let g:ale_linters = {
      \   'typescript': ['tslint', 'tsserver', 'prettier'],
      \ }

let g:ale_fixers = {
      \   'typescript': ['tslint', 'prettier'],
      \ }

" Fix errors
nmap <silent> <C-e>f <Plug>(ale-fix)

" Move between warnings & errors
nmap <silent> <C-e>p <Plug>(ale_previous_wrap)
nmap <silent> <C-e>n <Plug>(ale_next_wrap)

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
" => Toggline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add comma or semicolon at the end of line or expresion
nmap <silent> <leader>, :call toggline#End(',')<cr>
nmap <silent> <leader>; :call toggline#End(';')<cr>
inoremap <silent> <leader>, <C-\><C-O>:call toggline#End(',')<cr>
inoremap <silent> <leader>; <C-\><C-O>:call toggline#End(';')<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ESearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:esearch = {
      \ 'adapter':    'ag',
      \ 'backend':    'nvim',
      \ 'out':        'win',
      \ 'batch_size': 1000,
      \ 'use':        ['visual', 'hlsearch', 'last'],
      \}

" Prevent autocmd, shell and write commands from being run inside project-specific files
set secure


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Quick Highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>m <Plug>(quickhl-manual-this)
xmap <leader>m <Plug>(quickhl-manual-this)

