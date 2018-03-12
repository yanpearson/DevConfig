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

Plugin 'junegunn/seoul256.vim'							" Seoul 256 colorscheme
Plugin 'junegunn/goyo.vim'                              " Zen mode
Plugin 'itchyny/lightline.vim'                          " Statusline
Plugin 'tpope/vim-fugitive'                             " Git Wrapper
Plugin 'tpope/vim-vinegar'                              " netrw wrapper
Plugin 'sheerun/vim-polyglot'                           " Language pack
Plugin 'scrooloose/nerdcommenter'                       " Code comment
Plugin 'freitass/todo.txt-vim'                          " Todo

" All of your Plugins must be added before the following line
call vundle#end()

" ============
" General
" ============

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

" relative line number
set relativenumber

" ============
" Appearance
" ============

" Color scheme
syntax enable

let g:seoul256_background = 236
colo seoul256
set background=dark

if &term =~ '256color'
	" disable Background Color Erase (BCE) so that color schemes
	" render properly when inside 256-color tmux and GNU screen.
	" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	set t_ut=
endif

" ============
" shorcuts
" ============

" Leader key
let mapleader=","

" Disable search highlight
nnoremap <leader>h :noh<cr>

" Remove trailing whitespaces
nnoremap <leader><space> :%s/\s\+$//<cr>

" Toggle Tagbar
nnoremap <leader>e :TagbarToggle<cr>

" Save buffer (fugitive)
nnoremap <leader>w :Gwrite<cr>

" Save buffer
nnoremap <leader>W :w<cr>

" ============
" Lightline
" ============
set laststatus=2
set noshowmode
let g:lightline = {
			\ 'colorscheme': 'seoul256',
			\ }
