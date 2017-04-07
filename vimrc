" Yan Pearson vim config

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ============
" Plugins
" ============

" ### Setup Vundle for package management

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ### Plugins

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized' 	" Solarized colorscheme
Plugin 'morhetz/gruvbox'					" Gruvbox colorscheme
Plugin 'scrooloose/nerdtree'				" Tree explorer
Plugin 'tmhedberg/matchit'					" Extended % matching for HTML, LaTeX, and many other languages
Plugin 'bling/vim-airline'					" Status bar
Plugin 'ctrlpvim/ctrlp.vim'					" Fuzzy search
Plugin 'tpope/vim-fugitive'					" Git Wrapper
Plugin 'tpope/vim-surround'					" Surroundings
Plugin 'majutsushi/tagbar'					" Tagbar
Plugin 'sheerun/vim-polyglot'				" Language pack

" All of your Plugins must be added before the following line
call vundle#end()

" ============
" General
" ============

" Enable clipboard
set clipboard=unnamed

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Single tab character that appears 4-spaces-wide
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" Line hover
set cursorline

" No wrap
set nowrap

" Search highlight
set hls

" set the directories that store the recovery files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" disable swap files creation
set noswapfile

" ============
" Appearance
" ============

" Color scheme
syntax enable
set background=dark

" Uncomment if terminal emulator’s colorscheme does not used the Solarized palette
" let g:solarized_termcolors=256

colorscheme gruvbox

" ============
" shorcuts
" ============

" Leader key
let mapleader=","

" Disable search highlight
nnoremap <leader>h :noh<cr>

" Remove trailing whitespaces
nnoremap <leader><space> :%s/\s\+$//<cr>

" Toggle NERDTree
nnoremap <leader>t :NERDTreeToggle<cr>

" ============
" NERDTree
" ============
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='-'

" Fix issue with NERDTree not working over SSH
set encoding=utf-8

" ============
" Airline
" ============
let g:airline_powerline_fonts=1

" ============
" ctrlp
" ============
let g:ctrlp_extensions = ['tag', 'buffertag']

" ============
" Tagbar
" ============
nnoremap <silent> <F9> :TagbarToggle<CR>