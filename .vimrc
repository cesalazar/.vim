" Workaround to "fix" the problem with UltiSnips not finding python
if has('python3')
endif

execute pathogen#infect()
" syntax on
if !exists('g:syntax_on')
    syntax enable
endif
filetype plugin indent on


" Colors
hi ColorColumn        ctermfg=190     ctermbg=235     cterm=None
hi CursorColumn       ctermfg=None    ctermbg=235     cterm=None
hi CursorLine         ctermfg=None    ctermbg=235     cterm=None
hi CursorLineNr       ctermfg=43      ctermbg=None    cterm=None
hi DiffAdd                            ctermbg=273
hi DiffChange                         ctermbg=52      cterm=None
hi DiffDelete         ctermfg=15      ctermbg=52
hi DiffText           ctermfg=225     ctermbg=162
hi FoldColumn         ctermfg=162     ctermbg=None    cterm=Bold
hi Folded             ctermfg=162     ctermbg=None    cterm=Bold
hi LineNr             ctermfg=237     ctermbg=None    cterm=None
hi MatchParen         ctermfg=43      ctermbg=16      cterm=Bold
hi NERDTreeOpenable   ctermfg=0       ctermbg=None    cterm=None
hi Noise              ctermfg=Yellow
hi Pmenu              ctermfg=15      ctermbg=17      cterm=None
hi Search                             ctermbg=88      cterm=Reverse
hi SpellBad           ctermfg=198     ctermbg=0       cterm=Bold
hi StatusLine         ctermfg=255     ctermbg=235     cterm=None
hi StatusLineNC       ctermfg=246     ctermbg=233     cterm=None
hi TabLine            ctermfg=246     ctermbg=234     cterm=None
hi TabLineFill        ctermfg=246     ctermbg=234     cterm=None
hi TabLineSel         ctermfg=255     ctermbg=238     cterm=None
hi VertSplit          ctermfg=238     ctermbg=None    cterm=None
hi Visual             ctermfg=None    ctermbg=None    cterm=Bold,Underline
" Overwrite for vim-javascript scheme
hi! default link jsNull Constant
hi! default link jsUndefined Constant


" Config
let &showbreak='↪ '
set autoindent
set autoread
set background=light
set backup
set backupcopy=yes
set breakindent
set completeopt+=longest
set diffopt=internal,filler,vertical
set encoding=utf-8
set expandtab
set foldcolumn=2
set hidden
set ignorecase
set incsearch
set infercase
set linebreak
set listchars=eol:¬,tab:▸-,extends:❯,precedes:❮,space:·,trail:X,nbsp:!
set mouse=a
set nocursorline
set nowrap
set number
set scrolloff=7
set selection=inclusive
set shiftwidth=2
set showcmd
set smarttab
set softtabstop=2
set splitbelow
set splitright
set synmaxcol=500 " don't highlight anything after this amount of chars
set tabstop=4
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.rar
set wildmenu
set wildmode=list:longest,full


" Vem Tabline
let g:vem_tabline_show=2


" Multiple cursors
let g:multi_cursor_quit_key = '\'
let g:multi_cursor_select_all_word_key = ''
let g:multi_cursor_exit_from_visual_mode = 1
let g:multi_cursor_exit_from_insert_mode = 1


" Mappings
let mapleader = "-"
nnoremap <M-n> :NERDTreeTabsToggle<cr>
nnoremap <leader>p :set paste!<cr>
nnoremap <leader>u :set number!<cr>
nnoremap <leader><esc><esc> :q!<cr>
nnoremap <leader>m :set mouse=a<cr>:set mouse?<cr>
nnoremap <leader>M :set mouse=""<cr>:set mouse?<cr>
nnoremap <leader>vs :vsplit<cr>
nnoremap <leader>hs :split<cr>
nnoremap <leader>o :only<cr>
nnoremap <leader>`` :bdelete!<cr>
nnoremap <leader>n :enew<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>T :tag 
nnoremap <leader>t :tabnew<cr>
nnoremap <M-y> :YRShow<cr>/
nnoremap <leader>P :set filetype=
vnoremap <leader>b :Tabularize //l0<left><left><left>
vnoremap <C-r> "hy:%s~<C-r>h~~gc<left><left><left>
vnoremap <leader><C-r> "hy:%s~<C-r>h~<C-r>h~gc<left><left><left>
nnoremap <leader>gd :Gdiffsplit<cr>
nnoremap <leader>gs :Git<cr>
nnoremap <leader>GC :Git commit<cr>
nnoremap <leader>w <C-w>
nnoremap <leader>e :e!<cr>
nnoremap <up> :move-2<cr>
nnoremap <down> :move+1<cr>
nnoremap <leader>: :Ack! 
nnoremap <leader>; :AckWindow 
nnoremap <M-r> :History<cr>
nnoremap <leader>CC :set textwidth=0 colorcolumn=<cr>
nnoremap <leader>cc :set textwidth=80 colorcolumn=+1<cr>
nnoremap <leader>bd :.,$-bdelete<cr>
nnoremap <leader>cd :cd %:p:h<cr>
nnoremap <leader>Z vipzf
" Switch buffers
nnoremap <M-i> :call vem_tabline#tabline.select_next_buffer(1)<cr>
nnoremap <M-o> :call vem_tabline#tabline.select_next_buffer(0)<cr>
nnoremap <Home> :call vem_tabline#tabline.move_buffer(0)<cr>
nnoremap <End> :call vem_tabline#tabline.move_buffer(1)<cr>
" Highlight last inserted text
nnoremap gV `[v`]
nnoremap <M-e> :ALEToggle<cr>
nnoremap <M-x> :ALENextWrap<cr>
vnoremap <leader>y "+y
nnoremap <silent>\ :w<cr>
" Format lines to fit textwidth
nnoremap Q gqEj
" While on insert, move caret to:
" end of line
inoremap <silent><C-e> <C-o>$
" find character forward
inoremap <silent><C-f> <C-o>f
" find character backward
inoremap <silent><C-d> <C-o>F
" repeat find character
inoremap <silent><C-g> <C-o>;
" Underline a line with '='
nnoremap g= YpVr=j
" Move on insert mode
inoremap <M-h> <Left>
inoremap <M-b> <C-o>b
inoremap <M-l> <Right>
inoremap <M-n> <C-o>w
" Fold a code block
noremap <leader>[ $zf%
noremap <M-g> :GitGutterToggle<cr>
" Delete a line without adding it to the yanked stack
nnoremap <silent> <leader>d "_d
vnoremap <silent> <leader>d "_d
nnoremap <M-s> :set spell!<cr>
vnoremap <M-s> :sort i<cr>
nnoremap <M-m> :Gblame<cr>
" nnoremap <silent><Tab> <C-w><C-w>
nnoremap <C-i> <C-i>


" Automatically jump to the end of the text copied/pasted
xnoremap <silent> y y`]
nnoremap <silent> yy yy`]
xnoremap <silent> p p`]
xnoremap <silent> P P`]
nnoremap <silent> p p`]
nnoremap <silent> P P`]


" Netrw
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_keepdir=1
let g:netrw_liststyle=3
let g:netrw_sort_options='i'
let g:netrw_wiw=10
let g:netrw_xstrlen=2

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()

  function! NetrwMapping()
    noremap <buffer> - <leader>
    noremap <buffer> <C-l> <C-w>l
    noremap <buffer> <F1> :H netrw-contents<cr>
  endfunction
augroup END


" Git blame on a pop-up window
" https://www.reddit.com/r/vim/comments/i50pce/how_to_show_commit_that_introduced_current_line/
augroup GitBlamePopup
  nnoremap <silent><Leader>l :call setbufvar(winbufnr(
        \ popup_atcursor(
          \ split(system("git log -n 1 -L " . line(".") . ",+1:" . expand("%:p")), "\n"),
          \ { "padding": [1,2,1,2], "pos": "botleft", "wrap": 0, "border": [0,0,0,1] }
        \ )), "&filetype", "git" )<CR>
augroup END


" Copy paths to clipboard
if executable("xsel")
    let copiedToClipboard = "path copied to clipboard"
    nnoremap <leader>cp :silent !echo "%:p:h" \| xsel -ib<cr>:redraw!<cr>
                \:echo "Directory" copiedToClipboard<cr>
    nnoremap <leader>cf :silent !echo "%:p" \| xsel -ib<cr>:redraw!<cr>
                \:echo "File" copiedToClipboard<cr>
endif


" Open help in new listed buffer
augroup HelpBuf
  cabbrev h H
  cabbrev help H
  command! -nargs=? H help <args> | :only | :set buflisted
augroup END


" Beautify xml and json (not too happy with the current keys)
map <F9> :% !python -m json.tool <cr>
map <F10> :% !xmllint --format - <cr>
map <F11> :ALEFix<cr>


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


" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*', '*COMMIT*']


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
let g:user_emmet_mode = 'a'
let g:use_emmet_complete_tag = 1
let g:user_emmet_settings = {
              \   'html': {
              \     'empty_element_suffix': ' />',
              \   },
              \ }


" Return to last active buffer
nnoremap <silent>, <C-^>
" Restore the cursor position when switching buffers
aug CursorPosition
  au!
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
aug END


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


" Convert Markdown link to HTML, and viceversa
augroup ConvertLink
  command! -range MDLinkToHTML
      \ <line1>,<line2>s~\[\(.\{-}\)\](\(.\{-}\))~<a href="\2" target="_blank" rel="noopener noreferrer">\1</a>~ge

  command! -range HTMLLinkToMD
      \ <line1>,<line2>s~<a.\{-}href="\(.\{-}\)".\{-}>\(.\{-}\)</a>~\[\2\](\1\)~ge
augroup END


" Close all buffers except current
augroup CloseOtherBuffers
  command! BufOnly silent! execute "%bdelete|e#|bdelete#"
augroup END


" Fix punctuation and whitespaces
augroup FixContent
  function! FixPunctuation()
    " Remove whitespaces after opening symbol
    %s~\(["|“|(|\[]\)\s\+~\1~ge
    " Place closing symbol before the colon and stripe whitespaces
    %s~\([\.|;|,]\)\(\s\+\)\?\(["|”|)|\]]\)~\3\1~ge
    " Add a space after punctuation followed by opening symbol
    %s~\([\.|;|,]\)\(["|“|(|\[]\)~\1 \2~ge
    " Add a space after puntuation followed by a character or a number
    %s~\([\.|;|,|!|?]\)\([a-z|A-Z|0-9]\)~\1 \2~ge
    " Remove space before puntuation or symbol
    %s~\(\s\+\)\?\(["|”|)|\]|\.|;|,|!|?]\)~\2~ge
  endfunction

  function! FixSpaces()
    " Remove multiple spaces between words
    %s~\s\+~ ~ge
    " Remove spaces at the end of a line
    %s~\s\+$~~ge
  endfunction

  command! FixPunctuation silent call FixPunctuation()
  command! FixSpaces silent call FixSpaces()
  command! FixContent silent call FixPunctuation() | silent call FixSpaces()
augroup END


" indentLine
let g:indentLine_char = '┆'
let g:indentLine_color_term = 236
let g:indentLine_fileTypeExclude = ['json']


" Delete a buffer but keep layout
command! Kwbd bprev|bwipeout #
nmap <leader>x :Kwbd<CR> 


" Move each buffer to its own tab
nmap <leader>\ :tab sball<cr>:tabonly<cr>


" Automatically source the .vimrc file
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


augroup ToggleBars
  au!
  let s:hidden_all = 0
  function! ToggleHiddenAll()
    if s:hidden_all == 0
      let s:hidden_all = 1
      set noshowmode
      set noruler
      set laststatus=0
      set noshowcmd
      let g:vem_tabline_show=0
    else
      let s:hidden_all = 0
      set showmode
      set ruler
      set laststatus=2
      set showcmd
      let g:vem_tabline_show=2
    endif
  endfunction
  nnoremap <M-q> :call ToggleHiddenAll()<CR>
augroup END


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
  set grepprg=ag\ -aU\ --hidden\ --nogroup\ --nocolor
  " set grepprg="ag -aU --hidden --nogroup --nocolor"

  "Use ag in ack.vim
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif


" JSX highlighting and indent
let g:jsx_ext_required = 0


" ALE
let g:ale_enabled = 0
let g:ale_fix_on_save = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_javascript_eslint_suppress_missing_config = 0
let g:ale_javascript_eslint_suppress_eslintignore = 1
let g:ale_javascript_prettier_options = '--no-semi --single-quote --trailing-comma es5'
let g:ale_php_phpcs_executable='./vendor/bin/phpcs'
let g:ale_php_php_cs_fixer_executable='./vendor/bin/php-cs-fixer'

let g:ale_fixers = {
  \ 'css': ['stylelint'],
  \ 'html': ['prettier'],
  \ 'javascript': ['eslint', 'prettier'],
  \ 'jsx': ['eslint', 'prettier'],
  \ 'php': ['prettier', 'php_cs_fixer'],
  \ 'python': ['black'],
  \ 'scss': ['stylelint'],
  \ 'twig': ['prettier'],
  \ 'typescrypt': ['eslint', 'prettier'],
  \ 'vue': ['eslint', 'prettier'],
  \ }

let g:ale_linters = {
  \ 'css': ['stylelint'],
  \ 'html': ['prettier'],
  \ 'javascript': ['eslint', 'prettier'],
  \ 'jsx': ['eslint', 'prettier'],
  \ 'php': ['php_cs_fixer'],
  \ 'python': ['black'],
  \ 'scss': ['stylelint'],
  \ 'sh': ['shellcheck'],
  \ 'typescrypt': ['eslint', 'prettier'],
  \ 'vue': ['eslint', 'prettier'],
  \ }


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
    set undodir=$HOME/.vim/undodir/
    set undofile
endif


" Delimitmate
let delimitMate_matchpairs = "(:),[:],{:},<:>"
let delimitMate_balance_matchpairs = 1
let delimitMate_expand_space = 1
let delimitMate_expand_cr = 2


" incsearch (use \v for regex)
nmap / <Plug>(incsearch-forward)
nmap ? <Plug>(incsearch-backward)
nmap g/ <Plug>(incsearch-stay)


" incsearch-fuzzy
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zs/ <Plug>(incsearch-fuzzy-stay)


" WebDevIcons
let g:webdevicons_enable_nerdtree = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1


" NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 0
let NERDTreeShowBookmarks = 0
let NERDTreeCreatePrefix = 'silent keepalt keepjumps'
let NERDTreeBookmarksFile = $HOME.'/.vim/swapfiles/.NERDTreeBookmarks'
let g:NERDTreeDirArrowExpandable = '.'
let g:NERDTreeDirArrowCollapsible = '.'
let NERDTreeIgnore=['node_modules$[[dir]]', '\.pyc']


" NERDTree-Tabs
let g:nerdtree_tabs_open_on_new_tab = 1
let g:nerdtree_tabs_synchronize_view = 0
let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_open_on_gui_startup = 0


" PHP, Blade, Twig
" The JS syntax highlighting requires: https://github.com/vim-scripts/SyntaxRange
aug Twig
  au!
  autocmd FileType,BufRead,BufNewFile *.twig setlocal tabstop=2 shiftwidth=2 nosmartindent nobreakindent noexpandtab
        \ | call SyntaxRange#Include('<style>', '</style> %}', 'css', 'NonText')
        \ | call SyntaxRange#Include('{% js %}', '{% endjs %}', 'javascript', 'NonText')
        \ | call SyntaxRange#Include('<script>', '</script>', 'javascript', 'NonText')
        \ | set filetype=javascript.twig.html
aug END


" Styled Components
aug StyledComponents
  au!
  autocmd! Filetype,BufEnter,BufRead,BufNewFile *.js set filetype=javascript.jsx.scss
aug END


" Splitjoin
let g:splitjoin_trailing_comma=1
let g:splitjoin_html_attributes_hanging=1


" pcss
aug CSS
  au!
  autocmd FileType,BufRead,BufNewFile *.pcss setlocal filetype=css.scss
aug END


" SuperTab
let g:SuperTabLongestHighlight=1
let g:SuperTabLongestEnhanced=1
let g:SuperTabCompleteCase='match'


" Git commit message
aug Commit
  au!
  autocmd BufRead COMMIT_EDITMSG setlocal spell textwidth=72 colorcolumn=+1
aug END


" UltiSnips
let g:UltiSnipsListSnippets = '<c-l>'
let g:ultisnips_javascript = {
      \ 'keyword-spacing': 'always',
      \ 'semi': 'never',
      \ 'space-before-function-paren': 'always'
      \ }


" Save/restore views (folds)
aug AutoViews
  au!
  " Automatically save last view
  autocmd BufWrite ?* mkview 0
  " Restore the view automatically
  autocmd BufRead ?* silent loadview 0
aug END 


" Automatically include last typed command
aug ShowLastCommand
  au!
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
  nnoremap <expr> : ShowLastCmd()
aug END


" fix meta-keys (alt) which generate <Esc>a .. <Esc>z
let char='a'
while char <= 'z'
  exec "set <M-".char.">=\e".char
  exec "imap \e".char." <M-".char.">"
  let char = nr2char(1+char2nr(char))
endw


" fzf
let $FZF_DEFAULT_COMMAND = 'ag --nocolor --hidden --ignore .git -g ""'
nnoremap <M-a> :Ag!<space>
vnoremap <M-a> y:Ag!<space><C-r>"
nnoremap <M-h> :History<cr>
nnoremap <M-l> :BLines<cr>
nnoremap <M-f> :Files<cr>
nnoremap <M-b> :Buffers<cr>
" Insert mode completion
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)


" Gutentags
let g:gutentags_ctags_exclude = ['dist/']
let g:gutentags_file_list_command = {
      \   'markers': {
      \     '.git': 'git ls-files',
      \   },
      \ }


" Custom statusline
" https://gist.github.com/suderman/1243665
aug Statusline
  let g:modes={
        \ "\<C-V>": 'VBlock',
        \ 'c': 'Command',
        \ 'i': 'Insert',
        \ 'n': 'Normal',
        \ 'R': 'Replace',
        \ 'Rv': 'VReplace',
        \ 'V': 'V·Line',
        \ 'v': 'Visual',
        \}

  set statusline=
  set statusline+=\ %{'['.toupper(g:modes[mode()]).']'}  " mode
  set statusline+=\ %F\                          " filename
  set statusline+=%h                             " help file flag
  set statusline+=%m                             " modified flag
  set statusline+=%{&paste?'[PASTE]':''}         " paste mode
  set statusline+=%#Number#%r%*                  " read only flag
  set statusline+=%=                             " left/right separator
  set statusline+=%5(%{&filetype}%)              " filetype
  set statusline+=%6(%v%),                       " virtual column number
  set statusline+=%l/%L                          " cursor line/total lines
  set statusline+=\ %3(%p%)%%\                   " percent through file
aug END


" Uppercase work just like lowercase
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev QA qa
cnoreabbrev X x
cnoreabbrev Set set
cnoreabbrev Gblame Git blame
cnoreabbrev Gstatus Git
cnoreabbrev Gcommit Git commit


" vim: fdm=manual tabstop=2 softtabstop=2 shiftwidth=2 expandtab:
