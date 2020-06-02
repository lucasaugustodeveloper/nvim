" Install Vim Plug if not installed
call plug#begin()
" Colorscheme
Plug 'chriskempson/base16-vim'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Plugins
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
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'yggdroot/indentline'
Plug 'ap/vim-css-color'
Plug 'kien/rainbow_parentheses.vim'
Plug 'iamcco/markdown-preview.nvim'
Plug 'luochen1990/rainbow'
Plug 'mxw/vim-jsx'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'wakatime/vim-wakatime'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'tpope/vim-fugitive' 
Plug 'hail2u/vim-css3-syntax'
Plug 'slim-template/vim-slim'
Plug 'digitaltoad/vim-jade'
Plug 'cakebaker/scss-syntax.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'moll/vim-node'
Plug 'wavded/vim-stylus'
Plug 'stanangeloff/php.vim'
Plug 'isruslan/vim-es6'
Plug 'leshill/vim-json'
Plug 'nono/jquery.vim'
Plug 'burnettk/vim-angular'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'evidens/vim-twig'
Plug 'tpope/vim-liquid'
call plug#end()

colorscheme onedark
set background=dark
set termguicolors
set hidden
set number
set relativenumber
set inccommand=split
set cursorline
set ts=2
set sw=2
set et
set list lcs=tab:\|\
filetype plugin indent on
syntax on

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>ef :vsplit

nnoremap <C-p> :Files<cr>
nnoremap <C-f> :Ag<space>
nnoremap <C-b> :NERDTreeToggle<cr>
nnoremap <leader>ef :vsplit

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/Ultisnips'
let g:user_emmet_mode = 'a'
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:rainbow_active = 1
let g:NERDTreeShowIgnoredStatus = 1
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

let g:lightline = {
  \  'colorscheme': 'dracula'
\ }
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
\]
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
\ }

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

let g:indentLine_setColors = 0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
