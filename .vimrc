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
" Insert line break
map lb i
