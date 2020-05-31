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
Plug 'tpope/vim-commentary'


" File Explorer
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Make your Vim/Neovim as smart as VSCode.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Have the file system follow you around
Plug 'airblade/vim-rooter'
" auto set indent settings
Plug 'tpope/vim-sleuth'
" Better terminal detection
Plug 'wincent/terminus'
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
Plug 'Yggdroot/indentLine'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'ap/vim-css-color'
Plug 'luochen1990/rainbow'
" Remove trailing whitespaces
Plug 'vim-scripts/DeleteTrailingWhitespace'
" Improve scrolloff area
Plug 'drzel/vim-scroll-off-fraction'
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
" Allows you to do delete buffers (close files) without closing your windows 
Plug 'moll/vim-bbye'
" Shell inside of vim 
Plug 'Shougo/deol.nvim'
" Call another window to test code
"Plug 'kassio/neoterm'
Plug 'metakirby5/codi.vim'

" Icons - Always load dev-icons as the very lat one
Plug 'ryanoasis/vim-devicons'



call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
