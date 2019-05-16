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

let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
  echoerr "Vundle plugins are not installed. Please run ~/.vim/bin/install"
else
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

  "
  " Colorschemes
  "
  Plugin 'tpope/vim-vividchalk'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'chriskempson/vim-tomorrow-theme'
  Plugin 'Colour-Sampler-Pack'
  Plugin 'joshdick/onedark.vim'

  "
  " Ruby / Rails
  "
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-endwise'
  Plugin 'ecomba/vim-ruby-refactoring'
  Plugin 'jgdavey/vim-blockle'
  Plugin 'tpope/vim-rbenv'
  Plugin 'tpope/vim-rake'

  "
  " General Editing
  "
  Plugin 'tpope/vim-repeat'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'sjl/gundo.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'ervandew/supertab'
  Plugin 'matt-royal/diffthese'
  Plugin 'brysgo/quickfixfix'
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'YankRing.vim'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'tpope/vim-projectionist'
  Plugin 'kien/rainbow_parentheses.vim'
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'w0rp/ale'

  "
  " Window Management
  "
  Plugin 'ZoomWin'

  "
  " Searching
  "
  Plugin 'mileszs/ack.vim'
  Plugin 'rking/ag.vim'
  Plugin 'tpope/vim-abolish'
  Plugin 'junegunn/fzf'
  Plugin 'junegunn/fzf.vim'

  "
  " Navigation
  "
  Plugin 'scrooloose/nerdtree'
  Plugin 'majutsushi/tagbar'

  "
  " Languages
  "
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'pangloss/vim-javascript'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'fatih/vim-go'
  Plugin 'chrisbra/csv.vim'
  Plugin 'elzr/vim-json'
  Plugin 'briancollins/vim-jst'
  Plugin 'digitaltoad/vim-pug'
  Plugin 'mxw/vim-jsx'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'tomlion/vim-solidity'
  Plugin 'udalov/kotlin-vim'
  Plugin 'peitalin/vim-jsx-typescript'

  "
  " Development Tool Integration
  "
  Plugin 'tpope/vim-fugitive'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'tpope/vim-dispatch'
  Plugin 'carlobaldassi/ConqueTerm'
  Plugin 'sjl/vitality.vim'

  call vundle#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif
