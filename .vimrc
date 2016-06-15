"""""""""""""""
" Vundle setup
"""""""""""""""
" git clone https://github.com/VundleVim/Vundle.vim.git
" ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'klen/python-mode'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""
" => VIM User Interface
"""""""""""""""""""""""
" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Four space tab
set tabstop=4

" Set autoindent
set shiftwidth=4

" Show matching parentheses
set showmatch

" Show edit mode
set showmode

"""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set colorscheme
colorscheme solarized
set background=dark

"""""""""""""""""""""
" => Keybindings
"""""""""""""""""""""
" Insert line break [lb]
map lb i

" Run as Python script [Ctrl+P]
map <C-p> :w<CR>:!python %<CR>

" Manage splits
nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split  
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split  
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move right a split  
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split

""""""""""""""
" => NERDTree
""""""""""""""
" Start NERDTree automatically when opening Vim without file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Show bookmarks
let NERDTreeShowBookmarks=1

" Show hidden files
let NERDTreeShowHidden=1

" Disable rope
let g:pymode_rope_lookup_project = 0

" Minimal UI
let NERDTreeMinimalUI = 1

" Dir arrows
let NERDTreeMinimalUI = 1
