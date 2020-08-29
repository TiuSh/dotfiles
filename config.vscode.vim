set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins (vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" My plugins

" IDE
Plug 'tpope/vim-vinegar'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-repeat'
Plug 'asvetliakov/vim-easymotion'
Plug 'svermeulen/vim-easyclip'
Plug 'neovim/python-client'
Plug 'tpope/vim-unimpaired'
Plug 'Valloric/ListToggle'
Plug 'zirrostig/vim-schlepp'

" All languages
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'
Plug 'vim-scripts/argtextobj.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'glts/vim-textobj-comment'
Plug 'TiuSh/vim-toggline'

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

" Close all the buffers
map <leader>ba :%bdelete<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""" PLUGINS """""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Sayonara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader>bc :Sayonara!<cr>

" Show confirm before quit
let g:sayonara_confirm_quit = 1

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

