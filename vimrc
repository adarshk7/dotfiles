set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My plugin installations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" File manager
Plugin 'scrooloose/nerdtree'

" Fancy status bar
Plugin 'vim-airline/vim-airline'

Plugin 'rking/ag.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sickill/vim-sunburst'
Plugin 'airblade/vim-gitgutter'
Plugin 'Shougo/unite.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'hdima/python-syntax'
Plugin 'tpope/vim-surround'
Plugin 'editorconfig/editorconfig-vim'


call vundle#end()            " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" My settings
""""""""""""""""""
nmap <C-A> <NOP>
nmap <C-X> <NOP>
let mapleader=' '
set relativenumber
syntax on
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Buffer navigation mappings
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

set encoding=utf-8
set background=dark
colorscheme Sunburst
set updatetime=250
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme = 'badwolf'
let g:airline#extensions#tabline#enabled = 1
set timeoutlen=1000 ttimeoutlen=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|bower_components\|__pycache__\|*.pyo\|*.pyc'
let g:incident_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=234
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab

set colorcolumn=80

" For YouCompleteMe plugin
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" For editorconfig plugin
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

let NERDTreeIgnore=['\.pyc$', '\~$']

" Set vim clipboard to system clipboard
set clipboard=unnamed

" NERDTree Ignore .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree"
