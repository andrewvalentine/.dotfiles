""""""""""""""
" => My .vimrc
""""""""""""""

"""""""""""""""
" Vundle setup
"""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Define plugins

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'klen/python-mode'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/syntastic'

" All plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""
" Airline
"""""""""
set laststatus=2

""""""""
" CtrlP
""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim

"""""
" UI
"""""
set ignorecase " Ignore case when searching

set hlsearch " Highlight search results

set tabstop=4 " Four space tab

set shiftwidth=4 " Set autoindent

set showmatch " Show matching parentheses

set showmode " Show edit mode

""""""""""""""""""
" Colors and Fonts
""""""""""""""""""
syntax enable " Syntax highlighting

colorscheme solarized " Set colourscheme
set background=dark " Set colourscheme

"""""""""""""
" Keybindings
"""""""""""""
map lb i " Insert line break [lb]

map <C-p> :w<CR>:!python %<CR> " Run as Python script [Ctrl+p]

" Manage splits
nnoremap <C-J> <C-W><C-J> "Ctrl-j to move down a split  
nnoremap <C-K> <C-W><C-K> "Ctrl-k to move up a split  
nnoremap <C-L> <C-W><C-L> "Ctrl-l to move right a split  
nnoremap <C-H> <C-W><C-H> "Ctrl-h to move left a split

" Edit files in current directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

""""""""""
" NERDTree
""""""""""
map <C-n> :NERDTreeToggle<CR> " Toggle NERDTree [Ctrl+n]

let NERDTreeShowBookmarks=1 " Show bookmarks

let NERDTreeShowHidden=1 " Show hidden files 

let g:pymode_rope_lookup_project = 0 " Disable rope

let NERDTreeMinimalUI = 1 " Minimal UI

let NERDTreeMinimalUI = 1 " Dir arrows

""""""""
" .vimrc
""""""""
" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  endif
