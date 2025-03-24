" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

  call plug#begin()

  "
  " Colorschemes
  "
  Plug 'altercation/vim-colors-solarized'
  Plug 'arzg/vim-substrata'
  Plug 'cocopon/iceberg.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'jsit/toast.vim'
  Plug 'junegunn/seoul256.vim'
  Plug 'tpope/vim-vividchalk'
  Plug 'gruvbox-community/gruvbox'

  "
  " General Editing
  "
  Plug 'Lokaltog/vim-easymotion'
  Plug 'brysgo/quickfixfix'
  Plug 'dense-analysis/ale'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'matt-royal/diffthese'
  Plug 'mtth/scratch.vim'
  Plug 'prettier/vim-prettier'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdcommenter'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-projectionist'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ap/vim-css-color'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  "
  " Searching
  "
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'mileszs/ack.vim'
  Plug 'rking/ag.vim'
  Plug 'tpope/vim-abolish'

  "
  " Navigation
  "
  Plug 'majutsushi/tagbar'
  Plug 'scrooloose/nerdtree'

  "
  " Languages
  "
  Plug 'HerringtonDarkholme/yats'
  Plug 'briancollins/vim-jst'
  Plug 'chrisbra/csv.vim'
  Plug 'digitaltoad/vim-pug'
  Plug 'elzr/vim-json'
  Plug 'fatih/vim-go'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'othree/yajs.vim'
  Plug 'plasticboy/vim-markdown'
  Plug 'tomlion/vim-solidity'
  Plug 'udalov/kotlin-vim'
  Plug 'mustache/vim-mustache-handlebars'
  "
  " Development Tool Integration
  "
  Plug 'airblade/vim-gitgutter'
  Plug 'sjl/vitality.vim'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-fugitive'
  Plug 'vimwiki/vimwiki'

  call plug#end()

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
