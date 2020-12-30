set rnu
colorscheme seoul256 
syntax on 
filetype plugin on
filetype on             " detect type of file
filetype indent on      " load indent file for specific file type
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
call plug#begin('~/.vim/plugged')
" TODO find a better plugin or fix the extensions this one offers
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
 
call plug#end()
let &t_EI = "\<Esc>[1 q"
let &t_SR = "\<Esc>[3 q"
let &t_SI = "\<Esc>[5 q"

set hls
noremap <SPACE> <C-F> " use space to scroll
set incsearch

au BufNewFile,BufRead * set hidden
abb _date_ <C-R>=strftime("%Y-%m-%d")<CR>

" Ale
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '❗'
"add to this/change linter for languages
let g:ale_linters = {
	\   'python': ['flake8'],
	\}
" TODO: Find an auto completer; ALE has builtin, but there are better 

packloadall
silent! helptags ALL

let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
"let g:airline#extensions#ctrlp#enabled = 1
let g:airline_theme = 'violet'
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

packloadall
silent! helptags ALL
let g:airline#extensions#tabline#formatter = 'unique_tail'
