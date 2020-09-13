" This is .vimrc file of Avasz <avasz@protonmail.com>
" Added, compiled and modified from various sources for the usecase


"This should come first...
set nocompatible

"Set linewrap
set wrap

"Set pastetoggle with <f2>
set pastetoggle=<F2>

" Set spelling check for en_us with <F5>
inoremap <F5> <C-\><C-O>:setlocal spelllang=en_us spell! spell?<CR>

set encoding=UTF-8



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""  VIMPLUG SECTION  START """"""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Calling vim-plug
call plug#begin('~/.vim/plugged')

" Plug 'VundleVim/Vundle.vim'
" Plug 'ajmwagar/vim-deus' " Theme
" Plug 'chriskempson/base16-vim' " Theme
" Plug 'junegunn/limelight.vim'
" Plug 'nightsense/forgotten' " theme
" Plug 'nightsense/vimspectr' " Theme
" Plug 'tomtom/tlib_vim'
" Plug 'honza/vim-snippets'
" Plug 'sjl/gundo.vim' "Don't know how to use it
" Plug 'ap/vim-css-color'
Plug 'lilydjwg/colorizer'
Plug 'airblade/vim-gitgutter'
Plug 'EinfachToll/DidYouMean'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'aserebryakov/vim-todo-lists'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'frazrepo/vim-rainbow' " vim-rainbow for bracket pairs
"Plug 'garbas/vim-snipmate'
Plug 'godlygeek/tabular' " :Tabularize /<pattern>
Plug 'hashivim/vim-terraform'
Plug 'itchyny/lightline.vim'
Plug 'jamshedvesuna/vim-markdown-preview'
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'scwood/vim-hybrid'
Plug 'arcticicestudio/nord-vim'
" Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim' " Select & use 'gc'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
"Plugins must be added before this line
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""  VIMPLUG SECTION END """""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" colorscheme elflord " Colorscheme
" colorscheme deus " Colorscheme
" colorscheme base16-atlas
" colorscheme vimspectr210-dark
" colorscheme plastic
" colorscheme forgotten-dark
" set background=dark
" colorscheme hybrid
colorscheme nord

" let g:rainbow_active = 1
" set title "change title of terminal
syntax on " Syntax hilighting on
set autoindent " Autoindentation enabled
filetype plugin indent on "Using filetype plugin for indentation
autocmd filetype python set expandtab

let mapleader="," " Change MapLeader key to , from default \
let vim_markdown_preview_hotkey='<C-m>' " Change default markdown preview hotkey to Ctrl+m form Ctrl+p
let vim_markdown_preview_togle=2
"let vim_markdown_preview_github=1
"Open another file without saving changes to buffer
set hidden
set nowrap "Don't wrap lines
set tabstop=4 "Tab = 4 spaces
set nofoldenable "disable folding
set showtabline=2

" set number "Show line number
set relativenumber
set rnu
set shiftwidth=4 "number of spaces used for autoindent
" set shiftround "multiple shiftwidth when using '<' and '>' for indentation
set smarttab "insert tabs on the start of line according to shiftwidth and not tabstop

" Italic comments
highlight Comment cterm=italic gui=italic

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
let g:lightline = { 'colorscheme': 'wombat' }
set noshowmode "hide the default modes "--INSERT-- and other modes" in vim because lightline is good

"CTRLP options
"Exclude
set wildignore+=*/tmp/*,*.so,*.swp,*/node_modules/*
let g:ctrlp_show_hidden = 1

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

"let g:netrw_liststyle = 3
"let g:netrw_banner = 0
"let g:netrw_winsize = 25
"let g:netrw_browse_split = 4
"augroup ProjectDrawer
"	autocmd!
"	autocmd VimEnter * :Vexplore
"augroup END

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
nmap <F6> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" git nerdtree
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
let g:NERDTreeShowIgnoredStatus = 1

" autocmd TextChanged,TextChangedI <buffer> silent write
"""""""""""""""""""
" SOME HANDY TIPS "
"""""""""""""""""""

au BufNewFile,BufRead Jenkinsfile setf groovy
set fillchars+=vert:\▏
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set autochdir
