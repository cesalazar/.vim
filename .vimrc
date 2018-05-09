execute pathogen#infect()
" syntax on
if !exists('g:syntax_on')
    syntax enable
endif
filetype plugin indent on


" Colors
hi Visual        ctermfg=None    ctermbg=None  cterm=Bold,Underline
hi MatchParen    ctermfg=White   ctermbg=Blue  cterm=Bold
hi Noise         ctermfg=Yellow
hi DiffAdd                       ctermbg=273
hi DiffChange                    ctermbg=52    cterm=None
hi DiffText                      ctermbg=162
hi DiffDelete    ctermfg=15      ctermbg=52
hi Folded        ctermfg=162     ctermbg=None  cterm=Bold
hi FoldColumn    ctermfg=162     ctermbg=None  cterm=Bold
hi VertSplit     ctermfg=238     ctermbg=None  cterm=None
hi ColorColumn   ctermfg=190     ctermbg=235   cterm=None
hi Search                        ctermbg=88    cterm=Reverse
hi StatusLine    ctermfg=190     ctermbg=None
hi StatusLineNC  ctermfg=190     ctermbg=None
hi MatchParen    ctermfg=190     ctermbg=0     cterm=Bold
hi SpellBad      ctermfg=198     ctermbg=0     cterm=Bold
hi CursorLine    ctermfg=None    ctermbg=235   cterm=None
hi CursorColumn  ctermfg=None    ctermbg=235   cterm=None


" Config
let &showbreak='↪ '
set encoding=utf-8
set listchars=eol:¬,tab:▸-,extends:❯,precedes:❮
set number
set ignorecase
set mouse=a
set background=light
set autoindent
set autoread
set expandtab
set smarttab
set softtabstop=2
set tabstop=4
set shiftwidth=2
set incsearch
set splitbelow
set splitright
set wildmenu
set wildmode=list:longest,full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.rar
set scrolloff=7
set updatetime=250
set hidden
set backupcopy=yes
set backup
set foldcolumn=2
set selection=inclusive
" set selection=exclusive
set infercase
set breakindent
set linebreak
" hide the mode because it is displayed in the status bar
set noshowmode


" Airline options
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_close_button = 0


" Multiple cursors
let g:multi_cursor_quit_key = 'q'
let g:multi_cursor_exit_from_visual_mode = 1
let g:multi_cursor_exit_from_insert_mode = 1


" Mappings
let mapleader = "-"
" nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <M-n> :NERDTreeToggle<cr>
nnoremap <leader>p :set paste!<cr>
nnoremap <leader>u :set number!<cr>
nnoremap <leader><esc> :q!<cr>
nnoremap <leader>m :set mouse=a<cr>:set mouse?<cr>
nnoremap <leader>M :set mouse=""<cr>:set mouse?<cr>
nnoremap <leader>vs :vsplit<cr>
nnoremap <leader>hs :split<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader><esc> :q!<cr>
nnoremap <leader>`` :bd!<cr>
nnoremap <leader>n :enew<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>T :tag 
nnoremap <leader>Y :YRShow<cr>
nnoremap <M-y> :YRShow<cr>/
nnoremap <leader>P :set filetype=
vnoremap <leader>b :Tabularize //l0<left><left><left>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
vnoremap <leader><C-r> "hy:%s/<C-r>h/<C-r>h/gc<left><left><left>
nnoremap <leader>gd :Gvdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>GC :Gcommit<cr>
nnoremap <leader>w <C-w>
nnoremap <leader>e :e!<cr>
nnoremap <up> :move-2<cr>
nnoremap <down> :move+1<cr>
nnoremap <leader>: :Ack! 
nnoremap <leader>; :AckWindow 
nnoremap <leader>r :CtrlPMRU<cr>
nnoremap <M-r> :CtrlPMRU<cr>
nnoremap <M-b> :CtrlPBuffer<CR>
nnoremap <leader>CC :set textwidth=0 colorcolumn=<cr>
nnoremap <leader>cc :set textwidth=78 colorcolumn=+1,+2<cr>
nnoremap <leader>bd :.,$-bdelete<cr>
nnoremap <leader>cd :cd %:p:h<cr>
nnoremap <leader>Z vipzf
" highlight last inserted text
nnoremap gV `[v`]`  
nnoremap <M-e> :ALEToggle<cr>
vnoremap <silent><M-j> :'<,'>TCommentAs jsx<cr>
vnoremap <leader>y "+y
nnoremap <silent>\ :w<cr>
" Format lines longer than 78 cols
nnoremap Q gqEj
" While on insert, move caret to:
" end of line
inoremap <silent><C-e> <C-o>$
" find character forward
inoremap <silent><C-f> <C-o>f
" find character backward
inoremap <silent><C-d> <C-o>F
" Underline a line with '='
nnoremap g= YpVr=j
" Cut, paste and indent in HTML
inoremap <M-j> <Esc>jddkkp==
" Move on insert mode
inoremap <M-h> <Left>
inoremap <M-b> <C-o>b
inoremap <M-l> <Right>
inoremap <M-n> <C-o>w


" Automatically jump to the end of the text copied/pasted
xnoremap <silent> y y`]
nnoremap <silent> yy yy`]
xnoremap <silent> p p`]
xnoremap <silent> P P`]
nnoremap <silent> p p`]
nnoremap <silent> P P`]
" Reselect pasted text
nnoremap <leader>gv `[v`]


" Copy paths to clipboard
if executable("xsel")
    let copiedToClipboard = "path copied to clipboard"
    nnoremap <leader>cp :silent !echo %:p:h \| xsel -ib<cr>:redraw!<cr>
                \:echo "Directory" copiedToClipboard<cr>
    nnoremap <leader>cf :silent !echo %:p \| xsel -ib<cr>:redraw!<cr>
                \:echo "File" copiedToClipboard<cr>
endif


" Arpeggio
" jk = <Esc>
call arpeggio#map('i', '', 0, 'jk', '<Esc>')
" kl = <C-o>$
call arpeggio#map('i', '', 0, 'kl', '<C-o>$')
" kl = <C-o>B
call arpeggio#map('i', '', 0, 'hj', '<C-o>B')
" nnoremap gb :CtrlPBuffer<CR>
call arpeggio#map('n', '', 0, 'gb', ':CtrlPBuffer<CR>')


" Open help in new tab
cabbrev h tab h
cabbrev help tab help


" Beautify xml and json (not too happy with the current keys)
map <F9> :% !python -m json.tool <cr>
map <F10> :% !xmllint --format - <cr>


" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk


" Use shift-H and shift-L for move to beginning/end
map H 0
map L $


" Remap VIM 0 to first non-blank character
map 0 ^


" Split Management
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
nmap L <Plug>(easymotion-overwin-line)
" map S <Plug>(easymotion-bd-wl)


" emmet config
let g:user_emmet_mode='a'
let g:use_emmet_complete_tag=1
let g:user_emmet_settings = {
              \   'html': {
              \     'empty_element_suffix': ' />',
              \   },
              \ }


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


" Return to last active buffer
nnoremap <silent>, <C-^>


" Return to last active tab
let s:prevtabnum=tabpagenr('$')
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <leader>, :exe "tabn ".g:lasttab<cr>


" Return to the previous tab after closing the current one 
augroup TabClosed
    autocmd! TabEnter * :if tabpagenr('$')<s:prevtabnum && tabpagenr()>1
                \       |   tabprevious
                \       |endif
                \       |let s:prevtabnum=tabpagenr('$')
augroup END


" indentLine
let g:indentLine_char = '┆'
let g:indentLine_color_term = 236
let g:indentLine_fileTypeExclude = ['json']


" Delete buffer
" map <leader>x :bd<cr>
" Delete a buffer but keep layout
command! Kwbd bp|bw #
nmap <leader>x :Kwbd<CR> 


" Move each buffer to its own tab
nmap <leader>\ :tab sball<cr>:tabonly<cr>
" nmap <leader>\ :tabnew<cr>:Kwbd<cr>


" Automatically source the .vimrc file
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


" ctrlp config
" let g:ctrlp_bufname_mod = ':~:.'
" let g:ctrlp_bufname_mod = ':p'
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_arg_map = 1
let g:ctrlp_open_multiple_files = 'i'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'
let g:ctrlp_prompt_mappings = {
    \ 'PrtDeleteEnt()':       ['<C-x>'],
    \ 'AcceptSelection("h")': ['<c-cr>', '<c-s>'],
    \ 'MarkToOpen()':         ['<C-g>'],
    \ 'PrtExit()':            ['<ESC>', '<C-c>'],
    \ }


" YankRing config
let g:yankring_window_height = 20
let g:yankring_min_element_length = 2
let g:yankring_replace_n_pkey = '<leader>z'
let g:yankring_replace_n_nkey = '<leader>a'
let g:yankring_history_dir = '~/.vim/swapfiles/'


" TList config
nnoremap <silent> <F8> :TlistToggle<CR>


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  "Use ag in ack.vim
  let g:ackprg = 'ag --nogroup --nocolor --column'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


" JSX highlighting and indent
let g:jsx_ext_required = 0


" ALE
let g:ale_enabled = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_fixers = {
    \   'javascript': [
    \       'standard',
    \   ],
    \   'scss': [
    \       'stylelint --syntax scss',
    \   ],
    \   'css': [
    \       'stylelint',
    \   ],
    \   'php': [
    \       'phpcbf',
    \   ],
    \}

let g:ale_linters = {
    \   'javascript': [
    \       'standard',
    \   ],
    \   'scss': [
    \       'stylelint --syntax scss',
    \   ],
    \   'css': [
    \       'stylelint',
    \   ],
    \   'php': [
    \       'phpcs',
    \   ],
    \}


" Swaps
set directory=$HOME/.vim/swapfiles//
if !isdirectory(&directory)
    call mkdir(&directory)
endif


" Backups
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
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 2


" incsearch (use \v for regex)
nmap /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


" incsearch-fuzzy
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zs/ <Plug>(incsearch-fuzzy-stay)


" WebDevIcons
let g:DevIconsEnableFoldersOpenClose = 0
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:DevIconsEnableFolderPatternMatching = 1

let g:WebDevIconsUnicodeDecorateFolderNodes = 0
let g:DevIconsDefaultFolderOpenSymbol = ' '
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '


" NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 0
let NERDTreeShowBookmarks = 0
let NERDTreeCreatePrefix = 'silent keepalt keepjumps'
let NERDTreeBookmarksFile = $HOME.'/.vim/swapfiles/.NERDTreeBookmarks'
let g:NERDTreeDirArrowExpandable = ''   " default: '▸'
let g:NERDTreeDirArrowCollapsible = ''  " default: '▾'
let NERDTreeIgnore=['node_modules$[[dir]]']


" NERDTree-Tabs
let g:nerdtree_tabs_open_on_new_tab = 1
let g:nerdtree_tabs_synchronize_view = 0
let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_open_on_gui_startup = 0


" Open NERDTree only if no file was specified
" let g:nerdtree_tabs_open_on_console_startup = 0
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | let g:nerdtree_tabs_open_on_console_startup = 1 | endif 


" Blade and PHP
autocmd FileType php setlocal shiftwidth=4
autocmd BufRead,BufNewFile *.blade.php setlocal shiftwidth=2 nosmartindent nobreakindent


" UtilSnips
let g:ultisnips_javascript = {
      \ 'keyword-spacing': 'always',
      \ 'semi': 'never',
      \ 'space-before-function-paren': 'always'
      \ }


" Save/restore views (folds)
aug AutoViews
  au!
  " Automatically save last view
  " autocmd BufWrite,QuitPre ?* mkview 0
  autocmd BufWrite ?* mkview 0
  " Restore the view automatically
  autocmd BufRead ?* silent loadview 0
aug END 


" Automatically include last typed command
nnoremap <expr> : ShowLastCmd()
function! ShowLastCmd()
    echohl ModeMsg
    echo ':' . getreg(':')
    echohl None

    while 1
        try
            let char = getchar()
            if char == '^\d\+$' || type(char) == 0
                let char = nr2char(char)
            endif
        catch /^Vim:Interrupt$/
            return ''
        endtry

        if char == "\<cursorhold>"
            continue
        elseif char == "\<cr>"
            return ':' . getreg(':') . "\<cr>"
        else
            return ':' . char
        endif
    endwhile
endfunction


" fix meta-keys (alt) which generate <Esc>a .. <Esc>z
let char='a'
while char <= 'z'
  exec "set <M-".char.">=\e".char
  exec "imap \e".char." <M-".char.">"
  let char = nr2char(1+char2nr(char))
endw


" fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <M-a> :Ag!<space>
vnoremap <M-a> y:Ag!<space><C-r>"
" CtrlP is more flexible to manage the buffers
" nnoremap <M-b> :Buffers<cr>
nnoremap <M-h> :History<cr>
nnoremap <M-l> :BLines<cr>
nnoremap <M-f> :Files<cr>
" Insert mode completion
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
" imap <c-x><c-k> <plug>(fzf-complete-line-buffer)


" Goyo (jrnl)
function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

function! JrnlSettings()
  Goyo 120x80%
endfunction
command! JrnlSettings call JrnlSettings()


" Disable ex mode
" map Q <Nop>
" nnoremap <C-q> <Nop>
" nnoremap <M-j> <Nop>
" nnoremap <M-k> <Nop>
" nnoremap <C-w> <Nop>


" Uppercase work just like lowercase
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev QA qa
cnoreabbrev X x


" vim: fdm=manual tabstop=2 softtabstop=2 shiftwidth=2 expandtab:
