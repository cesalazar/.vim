execute pathogen#infect()
syntax on
filetype plugin indent on

set encoding=utf-8
set number
set ts=2

let mapleader = "-"
nnoremap <leader>n :NERDTreeToggle<cr>

" vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>

"nnoremap <leader>- :split<cr>

nnoremap <leader><esc> :q!<cr>

" Config
set number
set ignorecase
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
set background=light

" Tab management
map Ô :tabp<cr>
map  :tabn<cr>
map † :tabnew<cr>
map ∑ :tabclose<cr>

" Buffer management (∆ = j / ˚ = k / œ = q)
"map ∆ :bn<cr>
"map ˚ :bp<cr>
"map œ :bd<cr>

" ctrlp config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" bind K to grep word under cursor
" Disabled because of vim-tmux bundle
" nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Uppercase work just like lowercase
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev X x
