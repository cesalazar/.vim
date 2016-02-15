execute pathogen#infect()
syntax on
filetype plugin indent on


" Config
set encoding=utf-8
set number
set ignorecase
set mouse=a
set background=light
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set incsearch
set splitbelow
set splitright
set directory=~/.vim/swapfiles//


" NERDTree options
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1


let mapleader = "-"
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>p :set paste!<cr>
nnoremap <leader>w :set wrap!<cr>:set wrap?<cr>
nnoremap <leader>u :set number!<cr>
nnoremap <leader><esc> :q!<cr>
nnoremap <leader>rell :source $MYVIMRC<cr>
nnoremap <leader>m :set mouse=a<cr>:set mouse?<cr>
nnoremap <leader>M :set mouse=""<cr>:set mouse?<cr>
nnoremap <leader>i :set hlsearch!<cr>
nnoremap <leader>vs :vsplit<cr>
nnoremap <leader>hs :split<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader><esc> :q!<cr>
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
nnoremap <leader>T :tag 
map <leader>r :MRU<cr>
map <leader>Y :YRShow<cr>
map <leader>y "+y


"---------Split Management---------
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
" Restore split size
map <leader>= <C-w>=
" Maximize split
map <leader>0 <C-w><bar>


" vim-easymotion search
nmap s <leader><leader>s
nmap S <leader><leader>w


" Tab management
map <leader>j :tabprevious<cr>
map <leader>k :tabnext<cr>
map <leader>t :tabnew<cr>


" Buffer management
map <leader>h :bprev<cr>
map <leader>l :bnext<cr>
map <leader>x :bdelete<cr>


"---------Auto-Command---------
" Automatically source the .vimrc file
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


" ctrlp config
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip


" YankRing config
let g:yankring_replace_n_pkey = '<leader>z'
let g:yankring_replace_n_nkey = '<leader>a'


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" bind K to grep word under cursor
" Disabled because of vim-tmux bundle
" nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" Uppercase work just like lowercase
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev X x
