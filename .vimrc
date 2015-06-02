execute pathogen#infect()
syntax on
filetype plugin indent on

set encoding=utf-8
set number

" Tab management
map <C-j> :tabp<cr>
map <C-k> :tabn<cr>
map <C-n> :tabnew<cr>
map <C-w> :tabclose<cr>

" ctrl config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" airline config
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" Uppercase Q X W work just like lowercase
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev X x
