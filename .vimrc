" Baiscs

set nocompatible			" Prevents backwards compatibility that might break other settings
let mapleader=","			" Leader is a comma
set hidden				" Prevents forced saving

" Vim Plug Stuff

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Autocomplete
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go'
Plug 'janko-m/vim-test'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/vader.vim'
Plug 'elmcast/elm-vim'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-mix-format'

call plug#end()

" Setting variables

set number				" Enable line numbering
set backspace=indent,eol,start		" Make backspace work over blank lines
set background=dark			" Turns on dark background
set relativenumber			" Makes line numbers relative to current line
set path+=**				" Recursive find
set wildmenu				" Enable tab completion in menu
set mouse=a				" Allows you to use the mouse on the window
set laststatus=2			" Always show the statusline
set incsearch 				" Searches for things before hitting enter
set hlsearch				" Highlight matches
set ignorecase				" Makes searching case insensitive
set smartcase				" Automatically switch to case sensitive when capital letter entered
set wildmenu				" Visual autocomplete for command menu
set lazyredraw				" Redraw only when needed
set showmatch				" Highlight matching [{()}]
set autoindent				" New lines inherit the indentation of previous lines
set linebreak				" Avoid wrapping a line in the middle of a word
set wrap				" Enable line wrapping
set ruler				" Always show cursor position
set noerrorbells			" Disable annoying error sounds
set title				" Set the window title to the file currently being edited
set history=1000			" Increase the undo history limit
set noswapfile				" Disable swap files

syntax enable				" Turn on syntax highlighting

" Mappings

inoremap jj <ESC>			" Use jj to exit insert mode
nnoremap B ^				" Move to the beginning of line
nnoremap E $				" Move to the end of line
nnoremap $ <Nop>			" Disable $
nnoremap ^ <Nop>			" Disable ^

"" Mappings for window movement when using split screen 

inoremap <c-h> <c-w>h
inoremap <c-l> <c-w>l
inoremap <c-j> <c-w>j
inoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

