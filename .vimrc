" This is .vimrc file of Avasz <avasz@protonmail.com>
" Added, compiled and modified from various sources for the usecase


"This should come first...
set nocompatible

"Set linewrap
set wrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""  VUNDLE SECTION  START """""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Calling vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'easymotion/vim-easymotion'
" Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'godlygeek/tabular'
Plugin 'nightsense/forgotten'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
"Plugin 'sjl/gundo.vim' "Don't know how to use it
Plugin 'plasticboy/vim-markdown'
"Plugin 'elzr/vim-json'
"
" Vim Snippet stuffs
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'

"Plugins must be added before this line
call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""  VUNDLE SECTION END """"""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme elflord " Colorscheme
set title "change title of terminal
syntax on " Syntax hilighting on
set autoindent " Autoindentation enabled
filetype plugin indent on "Using filetype plugin for indentation
autocmd filetype python set expandtab

let mapleader="," " Change MapLeader key to , from default \

"Open another file without saving changes to buffer
set hidden
set nowrap "Don't wrap lines
set tabstop=4 "Tab = 4 spaces

set number "Show line number
set shiftwidth=4 "number of spaces used for autoindent
set shiftround "multiple shiftwidth when using '<' and '>' for indentation
set smarttab "insert tabs on the start of line according to shiftwidth and not tabstop


set ignorecase
set smartcase
set hlsearch "hilight search
set incsearch "incremental search
nmap <silent> ,/ :nohlsearch<CR> "turn off hilighting after search is completed



"hilight whitespaces and tabs and breaks
" set list
" set showbreak=↪\ 
"set list listchars=tab:\|.

"disable listchars in filetype such as html.
"autocmd filetype html,xml set listchars-=tab:\|.

set history=1000 "large history
set undolevels=1000 "large undolevels


""stop beep
"set visualbell
"set noerrorbells

"don't use swp files
set nobackup
set noswapfile





"handy trick from Steve Losh for when we edit a file without permission, to use sudo
cmap w!! w !sudo tee % > /dev/null
set showcmd "Display incomplete commands


"For lightline.vim
set laststatus=2

"hide the default modes "--INSERT-- and other modes" in vim because lightline is good
set noshowmode

"CTRLP options
"Exclude
set wildignore+=*/tmp/*,*.so,*.swp,*/node_modules/*

"Reload .vimrc file easily
nmap <silent> <leader>sv :e $MYVIMRC<CR>
nmap <silent> <leader>ev :so $MYVIMRC<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""" SPLIT SECTION """""""""""""""""""""""""""""""""""" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"The following split settings have been taken from thoughtbot.com blog
"https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally

"Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"More natural split opening
set splitbelow
set splitright


"""""""""""""""""""
" SOME HANDY TIPS "
"""""""""""""""""""
