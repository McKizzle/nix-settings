"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings.
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required! 
Plugin 'VundleVim/Vundle.vim'

" My Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/LargeFile'
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
Plugin 'pangloss/vim-javascript'

" Enable plugins
call vundle#end()            " required
filetype plugin indent on    " This is required by vundle. 

" END OF VUNDLE SETTINGS.

" MY CUSTOM CONFIG
syntax on

" Racer configuration
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1

" Reactjs Configuration
let g:jsx_ext_required = 0

set number	" Show line numbers
" set nowrap	" Wrap lines
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++ 	" Wrap-broken line prefix
" set textwidth=135 	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally

set autoindent	" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
set expandtab

autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab autoindent smartindent smarttab
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Disable Cursor Navigation
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Change default vim alt files location. 
if $XDG_DATA_HOME
    set dir=$XDG_DATA_HOME/vim-tmp/swap/
    set backupdir=$XDG_DATA_HOME/vim-tmp/backup/
    set undodir=$XDG_DATA_HOME/vim-tmp/undo/
endif

set colorcolumn=135

" Advanced Settings...
set list
set listchars=tab:⟾▫︎

"" TagBar remapping
nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <silent> <F8> :NERDTreeToggle<CR>
