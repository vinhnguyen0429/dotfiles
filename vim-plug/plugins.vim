" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin("~/.vim/plugged")

" Plugin Section
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'

"Make your Vim/Neovim as smart as VSCode.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lsp'
" Have the file system follow you around
Plug 'airblade/vim-rooter'
" auto set indent settings
Plug 'tpope/vim-sleuth'
" Terminal
Plug 'voldikss/vim-floaterm'
" Start Screen
Plug 'mhinz/vim-startify'
" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key'
" Text Navigation
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
" Add some color
Plug 'junegunn/rainbow_parentheses.vim'
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" PHPctags support
Plug 'vim-php/tagbar-phpctags.vim'
" WordPress
Plug 'salcode/vim-wordpress-dict'
Plug 'sudar/vim-wordpress-snippets'
" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
" Terminal 
Plug 'voldikss/vim-floaterm'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
