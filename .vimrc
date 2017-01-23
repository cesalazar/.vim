execute pathogen#infect()
syntax on
filetype plugin indent on
hi Visual ctermfg=Yellow ctermbg=NONE cterm=bold,underline
hi javaScriptParens ctermfg=410 ctermbg=NONE

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
set updatetime=250


" NERDTree options
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
" NERDTreeTabs
let g:nerdtree_tabs_synchronize_view=0


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
map <leader>P :set filetype=
map <leader>b :Tabularize //l0<left><left><left>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>GC :Gcommit<cr>


" Use pbcopy or xclip
if executable("pbcopy")
    map <leader>y "+y
    nnoremap √ :set paste<cr>"+p :set nopaste<cr>
else
    map <leader>y :!xclip -selection clipboard\"<cr>:undo<cr>
endif


" Beautify xml and json (not too happy with the current keys)
map <F8> :% !xmllint --format - <cr>
map <F9> :% !python -m json.tool <cr>

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


" MultipleSearch config
let g:MultipleSearchMaxColors = 5
let g:MultipleSearchColorSequence = "yellow,blue,red,green,brown"
let g:MultipleSearchTextColorSequence = "black,black,black,black,white"
nmap <leader>f :Search 
nmap <leader>F :SearchReset<cr>


" vim-easymotion search
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
let g:EasyMotion_enter_jump_first = 1
map s <Plug>(easymotion-sn)
map S <Plug>(easymotion-wn)


" emmet config
let g:user_emmet_mode='a'


" Tab management
nmap <leader>t :tabnew<cr>
nmap <Plug>goToPrevTab :tabprevious<cr>
    \:call repeat#set("\<Plug>goToPrevTab")<CR>
nmap <leader>j <Plug>goToPrevTab
nmap <Plug>goToNextTab :tabnext<cr>
    \:call repeat#set("\<Plug>goToNextTab")<CR>
nmap <leader>k <Plug>goToNextTab
nmap <Plug>moveTabLeft :tabm -1<cr>
    \:call repeat#set("\<Plug>moveTabLeft")<CR>
nmap <leader>< <Plug>moveTabLeft
nmap <Plug>moveTabRight :tabm +1<cr>
    \:call repeat#set("\<Plug>moveTabRight")<CR>
nmap <leader>> <Plug>moveTabRight

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent>, :exe "tabn ".g:lasttab<cr>


" Buffer management
map <leader>l :bnext<cr>
map <leader>h :bprev<cr>
map gb :bnext<cr>
map gB :bprev<cr>
map <leader>x :bdelete<cr>

" Move each buffer to its own tab
nmap <leader>\ :tab sball<cr>:tabnext<cr>


"---------Auto-Command---------
" Automatically source the .vimrc file
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


nnoremap <Up> :m-2<CR>
nnoremap <Down> :m+1<CR>


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


" Undotree
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 6
let g:undotree_SetFocusWhenToggle = 1
if has("persistent_undo")
    nnoremap <F5> :UndotreeToggle<cr>
    set undodir=$HOME/.vim/undodir//
    set undofile
endif


" Delimitmate
let delimitMate_matchpairs = "(:),[:],{:},<:>"
let delimitMate_balance_matchpairs = 1
let delimitMate_expand_space = 2
let delimitMate_expand_cr = 2


" incsearch (use \v for regex)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" incsearch-fuzzy
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)


set backupcopy=yes
set backup


" bind K to grep word under cursor
" Previously disabled because of vim-tmux bundle
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" Uppercase work just like lowercase
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev X x
