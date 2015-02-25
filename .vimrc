execute pathogen#infect()
syntax on
filetype plugin indent on

set encoding=utf-8
set number

"airline config
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" Uppercase Q X W work just like lowercase
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev X x
