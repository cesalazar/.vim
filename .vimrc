execute pathogen#infect()
syntax on
filetype plugin indent on
hi Visual ctermfg=Yellow ctermbg=NONE cterm=bold,underline

" Config
set encoding=utf-8
set number
set ignorecase
set mouse=a
set background=light
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
set autoindent
set autoread
set expandtab
set smarttab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set incsearch
set splitbelow
set splitright
set wildmenu
set so=7


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
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Beautify xml and json (not too happy with the current keys)
map <f8> :% !xmllint --format - <cr>
map <f9> :%!python -m json.tool <cr>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Remap VIM 0 to first non-blank character
map 0 ^


"---------Split Management---------
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
" Restore split size
map <leader>= <C-w>=
" Maximize active split
map <leader>0 <C-w><bar>
" Manipulate split width
nmap <Plug>ReduceSplitWidth 10<C-w>>
    \:call repeat#set("\<Plug>ReduceSplitWidth")<CR>
nmap <leader><S-l> <Plug>ReduceSplitWidth
nmap <Plug>IncreaseSplitWidth 10<C-w><
    \:call repeat#set("\<Plug>IncreaseSplitWidth")<CR>
nmap <leader><S-h> <Plug>IncreaseSplitWidth
" Manipulate split height
nmap <Plug>ReduceSplitHeight 5<C-w>-
    \:call repeat#set("\<Plug>ReduceSplitHeight")<CR>
nmap <leader><S-j> <Plug>ReduceSplitHeight
nmap <Plug>IncreaseSplitHeight 5<C-w>+
    \:call repeat#set("\<Plug>IncreaseSplitHeight")<CR>
nmap <leader><S-k> <Plug>IncreaseSplitHeight


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


" Failed attempt at renaming tmux windows. Didn't achieve the desired
" behavior.
" 
" autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
" set title
" augroup tmuxpath
"     autocmd!
"     autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
"     autocmd VimLeave * call system("tmux rename-window zsh") 
"     autocmd BufEnter * let &titlestring = ' ' . expand("%:t")                                                                 
"     set title
" augroup END


" ctrlp config
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip


" YankRing config
let g:yankring_replace_n_pkey = '<leader>z'
let g:yankring_replace_n_nkey = '<leader>a'
let g:yankring_history_dir = '~/.vim/swapfiles/'


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" Tidy swaps
set directory=$HOME/.vim/swapfiles//
if !isdirectory(&directory)
    call mkdir(&directory)
endif

" Tidy backups
set backupdir=$HOME/.vim/backups//
if !isdirectory(&backupdir)
    call mkdir(&backupdir)
endif

set backupcopy=yes
set backup


" bind K to grep word under cursor
" Previously disabled because of vim-tmux bundle
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" Uppercase work just like lowercase
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev X x
