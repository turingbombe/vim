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
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'arzg/vim-substrata'
  Plugin 'cocopon/iceberg.vim'
  Plugin 'joshdick/onedark.vim'
  Plugin 'tpope/vim-vividchalk'

  "
  " General Editing
  "
  Plugin 'Lokaltog/vim-easymotion'
  Plugin 'YankRing.vim'
  Plugin 'brysgo/quickfixfix'
  Plugin 'dense-analysis/ale'
  Plugin 'mtth/scratch.vim'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'ervandew/supertab'
  Plugin 'kien/rainbow_parentheses.vim'
  Plugin 'matt-royal/diffthese'
  Plugin 'prettier/vim-prettier'
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'sjl/gundo.vim'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'tpope/vim-projectionist'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'tpope/vim-obsession'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  "
  " Searching
  "
  Plugin 'junegunn/fzf'
  Plugin 'junegunn/fzf.vim'
  Plugin 'mileszs/ack.vim'
  Plugin 'rking/ag.vim'
  Plugin 'tpope/vim-abolish'

  "
  " Navigation
  "
  Plugin 'scrooloose/nerdtree'
  Plugin 'majutsushi/tagbar'

  "
  " Languages
  "
  Plugin 'HerringtonDarkholme/yats'
  Plugin 'briancollins/vim-jst'
  Plugin 'chrisbra/csv.vim'
  Plugin 'digitaltoad/vim-pug'
  Plugin 'elzr/vim-json'
  Plugin 'fatih/vim-go'
  Plugin 'maxmellon/vim-jsx-pretty'
  Plugin 'pangloss/vim-javascript'
  Plugin 'plasticboy/vim-markdown'
  Plugin 'tomlion/vim-solidity'
  Plugin 'udalov/kotlin-vim'

  "
  " Development Tool Integration
  "
  Plugin 'airblade/vim-gitgutter'
  Plugin 'sjl/vitality.vim'
  Plugin 'tpope/vim-dispatch'
  Plugin 'tpope/vim-fugitive'

  call vundle#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif
