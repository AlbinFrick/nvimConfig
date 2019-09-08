﻿" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
"pluggins
call plug#begin('~/.local/share/nvim/plugged')
"javascript syntax
Plug 'https://github.com/pangloss/vim-javascript.git'
"Latex
Plug 'lervag/vimtex'
"Distraction free vim
Plug 'junegunn/goyo.vim'
"NERDTree - navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
"Color scheme
"Plug 'flazz/vim-colorschemes'
Plug 'hzchirs/vim-material'
""Snippets
"Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
"Surround
Plug 'https://tpope.io/vim/surround.git' 
"Basically it's an extended standard library of Vim script functions
Plug 'https://github.com/xolox/vim-misc.git'
"Pandoc for compiling.
Plug 'https://github.com/vim-pandoc/vim-pandoc.git'
"Pretty colors when using markdown
Plug 'godlygeek/tabuar'
Plug 'plasticboy/vim-markdown'

"vim Notes plugin for eazy note taking
"Plug 'https://github.com/xolox/vim-notes.git'

call plug#end()

"let
let g:vim_markdown_new_list_item_indent = 2
let g:tex_flavor='latex'
let g:vimtex_compiler_progname = 'nvr'
"Autocomplete
let g:deoplete#enable_at_startup = 1
"JavaScript config
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let mapLeader = "\<Space>"


"set
"colorscheme molokai
colorscheme vim-material
set encoding=utf-8
set background=dark
set number 
set rnu
set noet ci pi sts=0 sw=4 ts=4
set tw=75
set spelllang=en,sv
set autochdir
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
"Sets clipboard to +y or +p
set clipboard+=unnamedplus

"keybindings

filetype plugin on

"Goyo - centering the text in window for easier typing
"Goyo for half screen
nnoremap <Space>gh :Goyo 65x80<Enter>:set number<Enter>:set rnu<Enter> 
"Goyo for full screen
nnoremap <Space>gf :Goyo 120x120<Enter>:set number<Enter>:set rnu<Enter>:set tw=115<Enter> 
"Get out of Goyo
nnoremap <Space>på :Goyo!<CR> 

"Navigating between files
nnoremap <Space>n :NERDTreeToggle<CR> 

"Go to target
nnoremap <Space><Space> :/(<>)<CR>"_dw:noh<CR>i

"Save and quit file
nnoremap <C-q> :wq<CR>

"Moving around between split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Compiling latex code             
nnoremap <C-s><C-l> :w<Enter>:!pdflatex --shell-escape %<CR>
nnoremap <C-s><C-m> :w<Enter>:!pandoc "%" -o pdf/"%:r.pdf"<CR>
"Spellchecking
nnoremap <C-n> :set spell<CR>
nnoremap <C-m> :set nospell<CR>

"syntax coloring markdown
nnoremap <C-s><C-1> :setfiletype markdown<CR>
nnoremap <C-'> o<Enter>******<Enter><CR>

"Getting back to normal-mode
inoremap jj <Esc>


"auto commands
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview 
