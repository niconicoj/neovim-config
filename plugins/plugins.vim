" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Gruvbox material theme
    Plug 'sainnhe/gruvbox-material'
    " Conqueror Of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Airline status bar
    Plug 'vim-airline/vim-airline'
    " Image viewer
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Colorizer / Rainbow parantheses
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    " Startify Plugin
    Plug 'mhinz/vim-startify'
    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " sneak
    Plug 'justinmk/vim-sneak'
    " which key
    Plug 'liuchengxu/vim-which-key'
    " floaterm
    Plug 'voldikss/vim-floaterm'
    " commentary
    Plug 'tpope/vim-commentary'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
