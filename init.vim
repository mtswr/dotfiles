autocmd!
set nu
set smartindent
set nobackup
set nowritebackup
scriptencoding utf-8
set autoread
set filetype on
set filetype plugin on
set filetype indent on

set nocompatible
syntax enable
set title
set autoindent
set background=dark
set hlsearch
set showcmd
set cmdheight=1
set scrolloff=10
set expandtab

set nosc noru nosm
set ignorecase
set smarttab

autocmd InsertLeave * set nopaste

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

runtime ./plug.vim

nmap <C-a> :NERDTreeToggle<CR>
