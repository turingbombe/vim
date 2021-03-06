scriptencoding utf-8

set guifont=Hack\ Regular\ Nerd\ Font\ Complete:h16
set guioptions-=T               " Remove GUI toolbar
set guioptions-=e               " Use text tab bar, not GUI
set guioptions-=rL              " Remove scrollbars
set guicursor=a:blinkon0        " Turn off the blinking cursor
set visualbell                  " Suppress audio/visual error bell
set encoding=utf8               " Set encoding for NerdTree icons

set notimeout                   " No command timeout
set ttimeout                    " Add back a timeout for terminal vim
set ttimeoutlen=100             " Keep the timeout very short
set ttyfast

set showcmd                     " Show typed command prefixes while waiting for operator
set mouse=a                     " Use mouse support in XTerm/iTerm.

set expandtab                   " Use soft tabs
set tabstop=2                   " Tab settings
set autoindent
set smarttab                    " Use shiftwidth to tab at line beginning
set shiftwidth=2                " Width of autoindent
set number                      " Line numbers
set relativenumber              " Relative line numbers
set lazyredraw
set nowrap                      " No wrapping
set backspace=indent,eol,start " Let backspace work over anything.
set wildignore+=tags               " Ignore tags when globbing.
set wildignore+=tmp/**             " ...Also tmp files.
set wildignore+=public/uploads/**  " ...Also uploads.
set wildignore+=public/images/**   " ...Also images.
set wildignore+=vendor/**          " ...Also vendor.
set wildignore+=**/node_modules/*  " ...Also node modules.
set wildignore+=**/dist/**         " ...Also builds
set wildignore+=yarn.lock          " ...Also yarn lock files
set list                        " Show whitespace
set listchars=trail:·
set completeopt=longest,menuone " Set omnicomplete to work more like IDE

set showmatch                   " Show matching brackets
set hidden                      " Allow hidden, unsaved buffers
set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom
set wildmode=list:longest       " Bash-like tab completion
set scrolloff=3                 " Scroll when the cursor is 3 lines from edge

set laststatus=2                " Always show statusline

set incsearch                   " Incremental search
set history=1024                " History size
set smartcase                   " Smart case-sensitivity when searching (overrides ignorecase)

set autoread                    " No prompt for file changes outside Vim
set swapfile                    " Keep swapfiles
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

set hls                         " search with highlights by default

let g:vim_json_syntax_conceal = 0 "set json to show quotes
" Write all writeable buffers when changing buffers or losing focus.
set autowriteall                " Save when doing various buffer-switching things.
autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.

let g:sql_type_default="postgresql"

" Turn off ri tooltips that don't work with Ruby 1.9 yet
" http://code.google.com/p/macvim/issues/detail?id=342
" if has("gui_running")
  " set noballooneval
" endif
