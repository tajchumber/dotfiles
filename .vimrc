set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'mattn/emmet-vim'
Plug 'ElmCast/elm-vim'
Plug 'sheerun/vim-polyglot'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'css', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html'] }

call plug#end()

syntax enable
filetype plugin indent on
set linebreak
set number
set showcmd
set hidden
set showmatch
set list

set incsearch
set hlsearch

set noswapfile
set nobackup
set autoread
set hlsearch

set expandtab
set tabstop=2
set softtabstop=2

set background=dark
colorscheme onedark
set termguicolors

"Fzf
nmap <C-p> :Files<cr>
let $FZF_DEFAULT_COMMAND = 'ack -g ""'

"Wild mode
set wildmenu
set wildmode=list:longest,full

"Highlight current line number
hi clear CursorLine
hi CursorLineNR cterm=bold
set cursorline

"Undo tree
"Persistent undo
if has('persistent_undo')
    set undodir=~/.vim/undodir/
    set undofile
endif

"Run mix format for elixir files on save
let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 1

"Format elm code on save
let g:elm_format_autosave = 1

imap jj <Esc>
imap jk <Esc>
map <C-n> :NERDTreeToggle<CR>
map <C-g> :Gdiffsplit<CR>
map <CR> :noh<CR>
nmap <Space> :Rg

