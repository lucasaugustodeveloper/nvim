" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
" Colorscheme
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'joshdick/onedark.vim'
Plug 'fenetikm/falcon'

Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'dbakker/vim-lint'
Plug 'editorconfig/editorconfig-vim'
Plug 'mhinz/vim-signify'
Plug 'Shougo/deoplete.nvim'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'valloric/MatchTagAlways'

call plug#end()

colorscheme base16-default-dark
set background=dark

set termguicolors
set hidden
set number
set relativenumber
set inccommand=split
set cursorline

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/Ultisnips'

let g:lightline = {
  \  'colorscheme': 'onedark'
\ }
let g:airline_theme = 'onedark'
