" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Change CWD to project root if it exists
  Plug 'airblade/vim-rooter'
  " Automatically set indent settings
  Plug 'tpope/vim-sleuth'

  " Better search based nav 
  Plug 'justinmk/vim-sneak'
  " Language syntax pack 
  Plug 'sheerun/vim-polyglot'
  " Add dev icons 
  Plug 'ryanoasis/vim-devicons'
  " Themes
  Plug 'christianchiarulli/onedark.vim'
  " CoC 
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Airline
  Plug 'vim-airline/vim-airline'
  " Ranger
  " Plug 'francoiscabrol/ranger.vim'
  " Plug 'rbgrouleff/bclose.vim'
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Git
  " Plug 'mhinz/vim-signify'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " Vista (LSP Viewer/Finder)
  Plug 'liuchengxu/vista.vim'
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

