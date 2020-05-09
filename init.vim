" Specify a directory for plugins
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
"Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
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
Plug 'https://github.com/vim-pandoc/vim-pandoc.git'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdcommenter'
call plug#end()

"let
let g:vim_markdown_new_list_item_indent = 2
let g:tex_flavor='latex'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_general_viewer = 'zathura'
"Autocomplete
let g:deoplete#enable_at_startup = 1
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger='<Nop>'
let g:UltiSnipsJumpForwardTrigger = '<TAB>'
let g:UltiSnipsJumpBackwardTrigger = '<S-TAB>'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
"JavaScript config
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let mapLeader = "\<Space>"

"set colorscheme molokai
"set background=dark
"colorscheme vim-material
set termguicolors
let ayucolor="dark"
colorscheme ayu
set encoding=utf-8
set number 
set rnu
set noet ci pi sts=0 sw=4 ts=4
set tw=75
set spelllang=en,sv
set autochdir
set smartindent
set tabstop=2
set shiftwidth=2
"set expandtab
set guifont=Roboto\ 14
"Sets clipboard to +y or +p
set clipboard+=unnamedplus

"Transparency
hi Normal guibg=NONE ctermbg=NONE

"keybindings

filetype plugin on

"Goyo - centering the text in window for easier typing
"Goyo for half screen
nnoremap <Space>gh :Goyo 65x80<Enter>:set number<Enter>:set rnu<Enter> 
"Goyo for full screen
nnoremap <Space>gf :Goyo 120x120<Enter>:set number<Enter>:set rnu<Enter>:set tw=75<Enter> 
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
nnoremap <C-s><C-l> :w<Enter>:!pdflatex "%" <CR>

"updates the bibliography to the document.
nnoremap <C-s><C-s> :w<Enter>:!biber "%:r" <CR>

"Compiling markdown to pdf in seperate folder
nnoremap <C-s><C-m> :w<Enter>:!pandoc "%" -s -o pdf/"%:r.pdf"<CR>

"Compiling markdown to presentation pdf
nnoremap <C-s><C-b> :w<Enter>:!pandoc "%" -t beamer -o "%:r.pdf"<CR>
"Spellchecking
nnoremap <C-n> :set spell<CR>
nnoremap <C-m> :set nospell<CR>

"Autocorrect to best replacement
nnoremap <C-k> 1z=

"Getting back to normal-mode
inoremap jj <Esc>

"surround word under cursor
nnoremap <C-S-s> ysiw"<CR>
"auto commands
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview 


"hi Normal guibg=NONE ctermbg=NONE
autocmd BufNewFile,BufRead *.tex set syntax=tex
autocmd BufNewFile,BufRead *.md set syntax=markdown


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
