﻿
if v:progname =~? "evim"
    finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
"set nocompatible
set nomodeline
set background=dark
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
"nmap ga <Plug>(EasyAlign)

filetype plugin on
"set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:block
set guifont=Iosevka\ SS09\ Semibold:6
set linespace=0

" coc.vim stuff
set pumheight=15
set shortmess=filnxtToOFc
set updatetime=300
set cmdheight=1
set hidden
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set iskeyword+=$
set undofile
set undodir=~/.vim/undo/
set backupdir=~/.vim/backups/
set directory=~/.vim/swap/
set nu " line numbers
set norelativenumber
"set autochdir " switch to current file dir

nnoremap <C-n> <Esc>:tabn<CR>
nnoremap <C-p> <Esc>:tabp<CR>
map <Tab> <Esc>:tabn<CR>
map <Right> <Esc>:tabn<CR>
map <S-Tab> <Esc>:tabp<CR>
map <Left> <Esc>:tabp<CR>
map <BS> <Esc>:noh<CR>
nnoremap <S-Up> <Esc>:bn<CR>
nnoremap <S-Down> <Esc>:bp<CR>

set formatoptions=qj
set ruler
"set nocursorline
set cursorline
set scrolljump=1        " lines to scroll when cursor leaves screen
set scrolloff=3         " minimum lines to keep above and below cursor
set laststatus=2        " show statusline allways

function! AltCommand(path, vim_command)
    let l:alternate = system("alt " . a:path)
    if empty(l:alternate)
        echo "No alternate file for " . a:path . " exists!"
    else
        exec a:vim_command . " " . l:alternate
    endif
endfunction
" Find the alternate file for the current path and open it
nnoremap <leader>. :w<CR>:call AltCommand(expand('%'), ':e')<CR>

"set shellcmdflag=-ic " FIXME https://github.com/robbyrussell/oh-my-zsh/issues/4174#issuecomment-125615443

" Get Neomake Jobs count for statusline
function! Neomake_statusline()
    "let bufnr = bufnr('%')
    let neomake_status_str = ''
    if exists('*neomake#GetJobs')
        if getbufvar(bufnr('%'), 'neomake_disabled', 0)
            let neomake_status_str .= ' b- '
        elseif get(g:, 'neomake_disabled', 0)
            let neomake_status_str .= ' g- '
        endif
        let neomake_jobs_count = len(neomake#GetJobs())
        if neomake_jobs_count > 0
            let neomake_status_str .= ';('
            let neomake_status_str .= neomake_jobs_count
            let neomake_status_str .= ')'
        endif
        "let neomake_status_str .= '%('.StatuslineNeomakeStatus(bufnr('%'), '…', '✓')
        "            \ . (a:active ? '%#StatColorHi2#' : '%*')
        "            \ . '%)'
    endif
    return neomake_status_str
endfunction

function! Hide_statusl(str, width)
    if winwidth(0) <= a:width
        return ''
    else
        return a:str
    endif
endfunction

let whoami=$USER

" statusline
set statusline=%F       " tail of the filename
set statusline+=%r      " read only flag
set statusline+=%m      " modified flag
if whoami == 'root'
    set statusline+=\ \ \ %#ErrorMsg#%{whoami}%#StatusLine#  " whoami root
endif
set statusline+=%=      " left/right separator
set statusline+=%{U+%B}  " show ASCII value of char under cursor
"set statusline+=[%F]
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] " file format
"set statusline+=%h      " help file flag
set statusline+=%w      " Preview window flag
set statusline+=%y\     " filetype
set statusline+=%c,     " cursor column
set statusline+=%l/%L   " cursor line/total lines
set statusline+=\ %P    " percent through file
" neomake
set statusline+=%#ErrorMsg#%{neomake#statusline#QflistStatus('\ qf:\ ')}%#StatusLine#
set statusline+=%#ErrorMsg#%{neomake#statusline#LoclistStatus('\ ll:\ ')}%#StatusLine#
set statusline+=%#StatusLine#%{Neomake_statusline()} " show pending neomake jobs
" syntastic
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

function! StatusLineFunc()
    let whoami=$USER
    let sl = '%F'
    let sl .= '%r'
    let sl .= '%m'
    if whoami == 'root'
        let sl .= '  %#ErrorMsg#%{whoami}%#StatusLine#'
    endif
    let sl .= '%='
    let sl .= Hide_statusl('[U+%B]', 70)
    let sl .= Hide_statusl('[%{strlen(&fenc)?&fenc:"none"},', 70)
    let sl .= Hide_statusl('%{&ff}]', 70)
    let sl .= Hide_statusl('%w', 70)
    let sl .= Hide_statusl('%y', 50)
    let sl .= '%c,'
    let sl .= '%l/%L'
    let sl .= ' %P'

    let sl .= '%#ErrorMsg#%{neomake#statusline#QflistStatus("|")}%#StatusLine#'
    let sl .= '%#ErrorMsg#%{neomake#statusline#LoclistStatus("|")}%#StatusLine#'
    let sl .= '%#StatusLine#%{Neomake_statusline()}'
    "let sl .= '%{coc#status()}'

    let sl .= '%#warningmsg#'
    let sl .= '%*'
    return sl
endfunction

set statusline=%!StatusLineFunc()

set synmaxcol=512       " Syntax coloring slows
"set ttyfast
"set ttyscroll=3
set lazyredraw " avoid scrolling problems

":command
command! Sw w !sudo tee > /dev/null %
"command! Sw :execute ':silent w !sudo tee % > /dev/null' | :edit!
"command! Man r!man " FIXME

nmap <M-1> :tabfirst<CR>
nmap <M-2> :tabnext 2<CR>
nmap <M-3> :tabnext 3<CR>
nmap <M-4> :tabnext 4<CR>
nmap <M-5> :tabnext 5<CR>
nmap <M-6> :tabnext 6<CR>
nmap <M-7> :tabnext 7<CR>
nmap <M-8> :tabnext 8<CR>
nmap <M-9> :tablast<CR>

" fold
set foldmethod=indent
set foldnestmax=2
set foldignore=
nnoremap <Space> <NOP>

let g:terminal_color_0="#000000" " #000000
let g:terminal_color_8="#686868"
" red
let g:terminal_color_1="#ff6565"
let g:terminal_color_9="#E4287C"
" green
let g:terminal_color_2="#17B217"
let g:terminal_color_10="#54FF54"
" yellow
let g:terminal_color_3="#FF8000"
let g:terminal_color_11="#FFFF54"
" blue
let g:terminal_color_4="#163BDE"
let g:terminal_color_12="#54FF54"
" magenta
let g:terminal_color_5="#D11BD1"
let g:terminal_color_13="#FF54FF"
" cyan
let g:terminal_color_6="#00DBDB"
let g:terminal_color_14="#54FFFF"
" white
let g:terminal_color_7="#F1F1F1"
let g:terminal_color_15="#FFFFFF"

"let g:easytags_async
set tags=./tags;
let g:easytags_dynamic_files = 2
let g:easytags_file = '~/.vim/tags'
"let g:easytags_by_filetype
let g:easytags_auto_update = 0
"let g:easytags_auto_highlight = 0
"unlet b:easytags_auto_highlight
let g:easytags_syntax_keyword = 'always'

let mapleader = "\<Space>"
let NERDTreeShowHidden=1
let g:yankring_history_dir = '~/.vim/'
let g:SuperTabDefaultCompletionType = "<c-n>"

let g:SignatureMarkTextHL = "Normal"

" https://github.com/Vimjas/vim-python-pep8-indent
"let g:python_pep8_indent_multiline_string
"let g:python_pep8_indent_hang_closing = 0

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#disable_auto_complete = 0
"let g:deoplete#enable_ignore_case = 1
"let g:deoplete#auto_complete_start_length = 2 " default 2
"let g:deoplete#max_list
"let g:deoplete#max_menu_width
"let g:deoplete#auto_complete_delay
"let g:deoplete#keyword_patterns = {}

"let g:deoplete#sources = {}
"let g:deoplete#sources._ = ['buffer', 'file']
"let g:deoplete#sources.cpp = ['buffer', 'tag']

"let g:deoplete#member#prefix_patterns
"let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#buffer#require_same_filetype = 0
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns._ = '\\?[a-zA-Z_]\w*'
let g:deoplete#keyword_patterns.php = '\\?[\$a-zA-Z_]\w*'

let g:rainbow_active = 1
"\   'guifgs': [ '#ffff00', '#00ffff', '#FF00FF' ],
let g:rainbow_conf = {
\   'guifgs': [ '#ffff00', '#00ffff', '#FF00FF' ],
\   'ctermfgs': [ '11', '14', '3', '13' ],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}


"set pastetoggle=<F10>
"set ts=2 sts=2 sw=2 noexpandtab
"set ts=2 sts=0 sw=2 expandtab
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab

"set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
"set softtabstop=2   " Sets the number of columns for a TAB
"set shiftwidth=2    " Indents will have a width of 4
"set expandtab       " Expand TABs to spaces

set splitbelow
set splitright

map <F9> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F7> <Esc>:set wrap!<CR>:set wrap?<CR>
"nmap <F7> :SyntasticToggleMode<CR>


"inoremap <C-å> <Esc>
"inoremap <C-ö> <Esc>
"inoremap <C-ä> <Esc>
nnoremap ö <Esc>:
nnoremap ä "
vnoremap ä "
nnoremap Å [
nnoremap å ]
vnoremap Å [
vnoremap å ]

" fzf fuzzy finder
nnoremap <C-t> <Esc>:Files2<CR>
"let g:fzf_buffers_jump = 1
nnoremap Ö <Esc>:Buffers<CR>
nnoremap Ä <Esc>:Snippets<CR>
" <Esc>:Windows<CR>
nnoremap <leader>l <Esc>:echo join(["
            \fuzzy finder fzf\n\n
            \ll :Lines\n
            \lb :BLines\n
            \lg :GFiles?\n
            \"], '')<CR>
nnoremap <leader>ll <Esc>:Lines<CR>
nnoremap <leader>lb <Esc>:BLines<CR>
nnoremap <leader>lg <Esc>:GFiles?<CR>
command! -bang -nargs=? -complete=dir Files2
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)
" command! -bang -nargs=* Files2
"             \ call fzf#vim#grep(
"             \    'find . -type f '
"             \ . <q-args> 1,
"             \   <bang>0 ? fzf#vim#with_preview('up:60%')
"             \           : fzf#vim#with_preview('right:50%', '?'),
"             \   <bang>0)
command! -bang -nargs=* Rg
            \ call fzf#vim#grep(
            \   '2>/dev/null rg --column --line-number --no-ignore --hidden --no-heading --color=always '
            \ . <q-args>, 1,
            \   <bang>0 ? fzf#vim#with_preview('up:60%')
            \           : fzf#vim#with_preview('right:50%', '?'),
            \   <bang>0)
nnoremap <leader>* "syiw:Rg <C-r>s<CR>
imap <c-f><c-l> <plug>(fzf-complete-line)
imap <c-f><c-k> <plug>(fzf-complete-word)
imap <c-f><c-g> <plug>(fzf-complete-path)
imap <c-f><c-j> <plug>(fzf-complete-file)

" ultisnips
let g:UltiSnipsExpandTrigger="<c-f><c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" cd autochdir
"nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
command! CD :lcd %:p:h
nnoremap gC :lcd %:p:h<CR>:pwd<CR>
nnoremap g.u :cd ..<CR>:pwd<CR>
nnoremap g.U :cd ~<CR>:pwd<CR>
nnoremap g. :pwd<CR>
nnoremap g.. :pwd<CR>

" clipboard/paste stuff
nnoremap <F10> <Esc>:set paste!<CR>:set paste?<CR>
nnoremap <leader>p <Esc>"*p
nnoremap <leader>P <Esc>"*P
nnoremap yp "0p
nnoremap yP "0P
vmap <leader>y "*y
nnoremap <leader>y <Esc>:w !xclip<CR>
" clipboard full filepath
nmap cP <Esc>:let @* = expand("%:p")<CR>

" select inside fold
vmap iz [zo]z

" insert date time
nnoremap <leader>D <Esc>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>

" cursor over timestamp to %Y-%m-%d %H:%M:%S
" : date +"%Y-%m-%d %H:%M:%S" --date @$(date) 2>/dev/null || date +%s --date="2017-10-20 14:48:06"
map gD "dyiw:!date +"\%Y-\%m-\%d \%H:\%M:\%S" --date @"<C-R>d" 2>/dev/null \|\| date +"\%s" --date="<C-R>d"<CR>
vmap gD "dy:!date +"\%Y-\%m-\%d \%H:\%M:\%S" --date @"<C-R>d" 2>/dev/null \|\| date +"\%s" --date="<C-R>d"<CR>
map gDD "dyiw:r!date +"\%Y-\%m-\%d \%H:\%M:\%S" --date @"<C-R>d" 2>/dev/null \|\| date +"\%s" --date="<C-R>d"<CR>
vmap gDD "dy:r!date +"\%Y-\%m-\%d \%H:\%M:\%S" --date @"<C-R>d" 2>/dev/null \|\| date +"\%s" --date="<C-R>d"<CR>

" timestamp: 1501828053
" datestrin: 2017-08-04 09:29:09 | 2017-08-04T09:29:09

" yank full filepath
nmap cp <Esc>:let @" = expand("%:p")<CR>
nmap <leader>cp <Esc>:let @* = expand("%:p")<CR>

" select pasted text
nnoremap gp `[v`]
" paste indentation
"nnoremap p ]p
"nnoremap P ]P

" quick calc stuff
"map gbc yypkA =<Esc>jOscale=2<Esc>:.,+1!bc<CR>kJ
map gbc "cyyA =<Esc>p:silent! .s/\s//g<CR>:silent! .s/,/./g<CR>:noh<CR>Oscale=2<Esc>:.,+1!bc<CR>kJdl
vmap gbc "cy`>a=<CR><Esc>"cP`]a<CR><Esc>k:silent! .s/[\s\n]//g<CR>:silent! .s/,/./g<CR>Oscale=2<Esc>:.,+1!bc<CR>kJdlJ:noh<CR>
"vmap gs y'>p:'[,']-1s/$/+/\|'[,']+1j!<CR>'[0"wy$:.s§.*§\=w§<CR>'[yyP:.s/./=/g<CR>_j

" comments
"nnoremap <leader>c O/*<Esc>
"nnoremap <leader>cc o*/<Esc>
"nnoremap <leader>ccc {o/*<Esc>}O*/<Esc>
"nnoremap <leader>ch O<!--<Esc>
"nnoremap <leader>chh o--><Esc>
"nnoremap <leader>cp O"""<Esc>
"nnoremap <leader>cpp o"""<Esc>
"nnoremap <leader>cppp {o"""<Esc>}O"""<Esc>

" indentation
nnoremap <leader>f <Esc>:echo join(["
            \foldmethod=", &foldmethod, "\n
            \\n
            \fi fdm=indent\n
            \fs fdm=syntax\n
            \fm fdm=manual\n"], '')<CR>
nnoremap <leader>fi <Esc>:set fdm=indent<CR>:set fdm?<CR>
nnoremap <leader>fs <Esc>:set fdm=syntax<CR>:set fdm?<CR>
nnoremap <leader>fm <Esc>:set fdm=manual<CR>:set fdm?<CR>
nnoremap <leader><F1> <Esc>:set foldnestmax=1<CR>:set foldnestmax?<CR>
nnoremap <leader><F2> <Esc>:set foldnestmax=2<CR>:set foldnestmax?<CR>
nnoremap <leader><F3> <Esc>:set foldnestmax=3<CR>:set foldnestmax?<CR>
nnoremap <leader><F4> <Esc>:set foldnestmax=4<CR>:set foldnestmax?<CR>
nnoremap <leader><F5> <Esc>:set foldnestmax=5<CR>:set foldnestmax?<CR>
nnoremap <leader><F6> <Esc>:set foldnestmax=6<CR>:set foldnestmax?<CR>
nnoremap <leader><F7> <Esc>:set foldnestmax=7<CR>:set foldnestmax?<CR>
nnoremap <leader><F8> <Esc>:set foldnestmax=8<CR>:set foldnestmax?<CR>
nnoremap <leader><F9> <Esc>:set foldnestmax=9<CR>:set foldnestmax?<CR>
"nnoremap <leader>u <Esc>:set expandtab? tabstop? softtabstop? shiftwidth? smarttab?<CR>
nnoremap <leader>u <Esc>:echo join(["
            \expandtab   = ", &expandtab, "\n
            \tabstop     = ", &tabstop, "\n
            \softtabstop = ", &softtabstop, "\n
            \shiftwidth  = ", &shiftwidth, "\n
            \smarttab    = ", &smarttab, "\n
            \\n
            \ue setl expandtab!\n
            \u1 setl tab opts=1\n
            \u2 setl tab opts=2\n
            \u4 setl tab opts=4\n
            \u8 setl tab opts=8"], '')<CR>
nnoremap <leader>uu <Esc>:set expandtab? tabstop? softtabstop? shiftwidth? smarttab?<CR>
nnoremap <leader>ue <Esc>:setl expandtab!<CR>:set expandtab?<CR>
nnoremap <leader>u1 <Esc>:setl tabstop=1 softtabstop=1 shiftwidth=1<CR>:set tabstop? softtabstop? shiftwidth?<CR>
nnoremap <leader>u2 <Esc>:setl tabstop=2 softtabstop=2 shiftwidth=2<CR>:set tabstop? softtabstop? shiftwidth?<CR>
nnoremap <leader>u3 <Esc>:setl tabstop=3 softtabstop=3 shiftwidth=3<CR>:set tabstop? softtabstop? shiftwidth?<CR>
nnoremap <leader>u4 <Esc>:setl tabstop=4 softtabstop=4 shiftwidth=4<CR>:set tabstop? softtabstop? shiftwidth?<CR>
nnoremap <leader>u8 <Esc>:setl tabstop=8 softtabstop=8 shiftwidth=8<CR>:set tabstop? softtabstop? shiftwidth?<CR>

nnoremap <leader>' :syntax sync fromstart<CR>:NeomakeClean<CR>

" buffers
nnoremap <leader>b <Esc>:Buffers<CR>
nnoremap <leader>1 <Esc>:b 1<CR>:echo "asdf"<CR>
nnoremap <leader>2 <Esc>:b 2<CR>
nnoremap <leader>3 <Esc>:b 3<CR>
nnoremap <leader>4 <Esc>:b 4<CR>
nnoremap <leader>5 <Esc>:b 5<CR>
nnoremap <leader>6 <Esc>:b 6<CR>
nnoremap <leader>7 <Esc>:b 7<CR>
nnoremap <leader>8 <Esc>:b 8<CR>
nnoremap <leader>9 <Esc>:b 9<CR>
nnoremap <leader>0 <Esc>:b

nnoremap <leader><CR> <Esc>:Neomake<CR>
nnoremap <leader>m <Esc>:echo "
            \mg gcc\n
            \mc clang\n
            \ml NeomakeListJobs\n
            \mm NeomakeCancelJobs\n
            \mM NeomakeToggle"<CR>
nnoremap <leader>mg <Esc>:Neomake gcc<CR>
nnoremap <leader>mc <Esc>:Neomake clang<CR>
nnoremap <leader>ml <Esc>:NeomakeListJobs<CR>
nnoremap <leader>mm <Esc>:NeomakeCancelJobs<CR>
nnoremap <leader>mM <Esc>:NeomakeToggle<CR>
"nnoremap <leader>m <Esc>:echo printf("todo")
" switch syntastic/Neomake standards

nnoremap <leader>s <Esc>:echo "
            \sz   phpcs standard Zend\n
            \sp   phpcs standard PEAR\n
            \sp1  phpcs standard PSR1\n
            \sp2  phpcs standard PSR2\n
            \spy  python3\n
            \spy2 python2\n
            \spy3 python3\n
            \sjm  javascript_makers eslint\n
            \sjM  javascript_makers default\n
            \\n
            \F7 SyntasticToggleMode"<CR>

" let g:neomake_php_phpcs_args_standard = 'PSR2'
nnoremap <leader>sz <Esc>:let g:syntastic_php_phpcs_args = "--encoding=utf-8 --report=csv --exclude=Generic.Files.LineLength --standard=Zend"<CR>
            \:SyntasticCheck<CR>
            \:let g:neomake_php_phpcs_args_standard = 'Zend'<CR>
            \:Neomake<CR>
            \:echo "phpcs standard Zend"<CR>

nnoremap <leader>sp <Esc>:let g:syntastic_php_phpcs_args = "--encoding=utf-8 --report=csv --exclude=Generic.Files.LineLength --standard=PEAR"<CR>
            \:SyntasticCheck<CR>
            \:let g:neomake_php_phpcs_args_standard = 'PEAR'<CR>
            \:echo "phpcs standard PEAR"<CR>

nnoremap <leader>sp1 <Esc>:let g:syntastic_php_phpcs_args = "--encoding=utf-8 --report=csv --standard=PSR1"<CR>
            \:SyntasticCheck<CR>
            \:let g:neomake_php_phpcs_args_standard = 'PSR1'<CR>
            \:Neomake<CR>
            \:echo "phpcs standard PSR1"<CR>

nnoremap <leader>sp2 <Esc>:let g:syntastic_php_phpcs_args = "--encoding=utf-8 --report=csv --exclude=Generic.Files.LineLength --standard=PSR2"<CR>
            \:SyntasticCheck<CR>
            \:let g:neomake_php_phpcs_args_standard = 'PSR2'<CR>
            \:Neomake<CR>
            \:echo "phpcs standard PSR2"<CR>
"\:SyntasticCheck<CR>

let g:neomake_python_flake8_args = '--ignore=E501'
let g:neomake_python_pycodestyle_args = '--max-line-length=200'

nnoremap <leader>spy2 <Esc>:let g:syntastic_python_python_exec = "/usr/bin/python2"<CR>
            \:let g:neomake_python_python_exe = 'python2'<CR>
            \:let g:neomake_python_flake8_exe = 'python2'<CR>
            \:let g:neomake_python_flake8_args = '-m flake8'<CR>
            \:let g:neomake_python_pylint_exe = 'pylint2'<CR>
            \:Neomake<CR>
            \:echo "syntastic python2"<CR>

nnoremap <leader>spy <Esc>:let g:syntastic_python_python_exec = "/usr/bin/python"<CR>
            \:let g:neomake_python_python_exe = 'python'<CR>
            \:let g:neomake_python_flake8_exe = 'flake8'<CR>
            \:let g:neomake_python_flake8_args = '--format=default'<CR>
            \:let g:neomake_python_pylint_exe = 'pylint'<CR>
            \:Neomake<CR>
            \:echo "syntastic python3"<CR>

"let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')

" https://github.com/bfrg/vim-cpp-modern Vim tends to a have issues with flagging braces inside brackets as invalid syntax, workaround:
let c_no_curly_error = 1

let g:cpp_args = [
            \ '-fsyntax-only',
            \ '-Wall',
            \ '-Wextra',
            \ '-std=c++1z',
            \ '-I./',
            \ '-I./include',
            \ ]
let g:neomake_cpp_gcc_args = g:cpp_args
let g:neomake_cpp_clang_args = g:cpp_args

"let g:neomake_cpp_clang_args = ['-fsyntax-only', '-Wall', '-Wextra', '-I./', '-std=c++1z', '-I./include', '-I./test_include']
"let g:neomake_cpp_clang_args += ['-I./test_include']
" test derp function
function! Derp()

    function! CustomExe(jobinfo) abort
        let self.args = [self.exe] + self.args
        let self.exe = 'clang++'
        return self
    endfunction
    call neomake#config#set('ft.cpp.InitForJob', function('CustomExe'))

    echo "done."

    return
endfunction
command! Derp :call Derp()

function! LoadCpp()
    " load project specific cpp stuff for Neomake
    "
    " example cpp.vim:
    " g:cpp_args = ['-fsyntax-only', '-Wall', '-Wextra']
    " g:cpp_include_paths = ['./include', './src', '../lib/include']
    if filereadable("./cpp.vim")
        source ./cpp.vim
        if exists("g:cpp_args")
            for argx in g:cpp_args
                if (index(g:neomake_cpp_clang_args, argx) >= 0)
                else
                    let g:neomake_cpp_clang_args += [argx]
                endif
            endfor
        else
            echo "g:cpp_args not defined"
        endif
        if exists("g:cpp_include_paths")
            for incl in g:cpp_include_paths
                if !isdirectory(incl)
                    echo incl . " does not exist"
                endif
                let incl_arg = "-I" . incl
                if (index(g:neomake_cpp_clang_args, incl_arg) >= 0)
                    "echo incl_arg . " already exists"
                else
                    let g:neomake_cpp_clang_args += [incl_arg]
                    "echo "adding: " . incl_arg
                endif
                " TODO check if paths exist?
            endfor
        else
            echo "g:cpp_include_paths not defined"
        endif
        echo g:neomake_cpp_gcc_args
    else
        echo "cpp.vim not found in " . getcwd()
    endif
endfunction
command! LoadCpp :call LoadCpp()

" This can also be configured as setting: >
function! CustomExe(jobinfo) abort
    "let clangMaker = neomake#makers#ft#cpp#clang()
    "let clangMaker.args += ['-I./test_include']
    "let clangMaker.exe = 'clang++'
    let self.args = ['-I./test_include']
    let self.exe = 'clang++'
    "let self.exe = 'some_custom_wrapper'
endfunction
"call neomake#config#set('ft.cpp.InitForJob', function('CustomExe'))

nnoremap <leader>sjm <Esc>:let g:neomake_javascript_enabled_makers = ['eslint']<CR>
            \:Neomake<CR>
            \:echo "let g:neomake_javascript_enabled_makers = ['eslint']"<CR>

nnoremap <leader>sjM <Esc>:unlet g:neomake_javascript_enabled_makers<CR>
            \:Neomake<CR>
            \:echo "unlet g:neomake_javascript_enabled_makers"<CR>

nnoremap <leader>spy3 <Esc>:let g:syntastic_python_python_exec = "/usr/bin/python"<CR>
            \:let g:neomake_python_python_exe = 'python'
            \:Neomake<CR>
            \:echo "syntastic python3"<CR>

"let g:syntastic_python_python_exec = '/usr/bin/python2'

" encoding
nnoremap <leader>C <Esc>:set fileencoding? fileformat? encoding? bomb?<CR>

" remove stuff
"\sz   phpcs standard Zend\n
nnoremap <leader>r <Esc>:echo "
            \r - remove extra spaces from line end\n
            \e - remove empty lines\n
            \m - remove ^M line endings\n"<CR>
nnoremap <leader>rr <Esc>:%s/\s\+$//<CR> " remove extra spaces from line end
nnoremap <leader>re <Esc>:g/^$/d<CR> " remove empty lines
nnoremap <leader>rm <Esc>:%s/\r$//g<CR> " remove line-endings with ^M
nnoremap <leader>k <Esc>:set list!<CR>:set list?<CR>

" splits tabs
nnoremap <leader>% <Esc><C-w>v<C-w>l
nnoremap <leader>" <Esc><C-w>s
nnoremap <c-w>% <Esc><C-w>v<C-w>l
nnoremap <c-w>" <Esc><C-w>s
nnoremap <leader>n <Esc>:NERDTreeToggle<CR>

nnoremap <leader>e <Esc>:echo join(["
            \Edit stuff\n\n
            \et :terminal\n
            \ee :e $CWD\n
            \e. :e .\n
            \em :e $MYVIMRC\n
            \"], '')<CR>
nnoremap <leader>et <Esc>:term<CR>
nnoremap <expr> <leader>ee ":e ".expand("%:h")."/"
nnoremap <leader>e. <Esc>:e .<CR>
nnoremap <leader>em <Esc>:e $MYVIMRC<CR>

nnoremap <leader>t <Esc>:echo join(["
            \Tabs\n\n
            \tt :tabnew\n
            \te :tabnew :term\n
            \t. :tabnew .\n
            \tf :tabnew %\n
            \"], '')<CR>
nnoremap <leader>tt <Esc>:tabnew<CR>
nnoremap <leader>t. <Esc>:tabnew .<CR>
nnoremap <leader>te <Esc>:tabnew<CR>:term<CR>
nnoremap <leader>tf <Esc>:tabnew %<CR>

" github.com/octol/vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight                  = 1 " Highlighting of class scope is disabled by default. To enable set
let g:cpp_member_variable_highlight              = 1 " Highlighting of member variables is disabled by default. To enable set
let g:cpp_class_decl_highlight                   = 1 " Highlighting of class names in declarations is disabled by default. To enable set
let g:cpp_experimental_simple_template_highlight = 1 " There are two ways to hightlight template functions. Either
let g:cpp_experimental_template_highlight        = 1 " which works in most cases, but can be a little slow on large files. Alternatively set
let g:cpp_concepts_highlight                     = 1 " Highlighting of library concepts is enabled by
let g:cpp_no_function_highlight                  = 1 " Highlighting of user defined functions can be disabled by

" diff
nnoremap <leader>dd <Esc>:diffthis<CR>
nnoremap <leader>du <Esc>:diffupdate<CR>
nnoremap <leader>ddd <Esc>:diffthis<CR><c-w><c-w>:diffthis<CR><c-w><c-w>
nnoremap <leader>do <Esc>:diffoff<CR>
nnoremap <leader>doo <Esc>:diffoff<CR><c-w><c-w>:diffoff<CR><c-w><c-w>
nnoremap <leader>dn ]c
nnoremap <leader>dN [c

"nnoremap <leader>d "_d
"xnoremap <leader>d "_d

nnoremap <leader>q <Esc>:q<CR>
"nnoremap <leader>qq <Esc>:qa<CR>
"nnoremap <leader>qqq <Esc>:qa!<CR>

nnoremap <leader><Left> :tabmove -1<CR>
nnoremap <leader><Right> :tabmove +1<CR>
nnoremap <leader><Up> :tabmove 0<CR>

" highlight git merge stuff
nnoremap <leader>/ <Esc>/^<<<<<<<\\|^=======\\|^>>>>>>><CR>
nnoremap <leader>F <Esc>/\cXXX\\|FIXME\\|TODO\\|NOTE<CR>

set list
set listchars=tab:\»\ ,trail:·

inoremap jk <Esc>
inoremap kj <Esc>
inoremap <C-a> <Esc>

nnoremap , za
vnoremap , za

" surrounding visual
vnoremap qq <Esc>`>a'<Esc>`<i'<Esc>
vnoremap qq' <Esc>`>a'<Esc>`<i'<Esc>
vnoremap qq" <Esc>`>a"<Esc>`<i"<Esc>
vnoremap qq` <Esc>`>a`<Esc>`<i`<Esc>
vnoremap qq* <Esc>`>a*<Esc>`<i*<Esc>
vnoremap qq( <Esc>`>a)<Esc>`<i(<Esc>
vnoremap qq[ <Esc>`>a]<Esc>`<i[<Esc>
vnoremap qq{ <Esc>`>a}<Esc>`<i{<Esc>
vnoremap qq} <Esc>`>a}<Esc>`<i{<Esc>
vnoremap qq< <Esc>`>a><Esc>`<i<<Esc>
vnoremap qq> <Esc>`>a><Esc>`<i<<Esc>

" pretty json
nnoremap <leader>js <Esc>:%!python -m json.tool<CR>
nnoremap gjs <Esc>:.!python -m json.tool<CR>
vnoremap gjs !python -m json.tool<CR>
vnoremap gJS "jy:new<CR>"jp:.!python -m json.tool<CR>:setf json<CR>:set foldnestmax=0<CR>z15<CR>

nnoremap gxml <Esc>:.!xmllint --format -<CR>
vnoremap gxml !xmllint --format -<CR>

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap / /\c
nnoremap // /

" Mundo/Gundo
nnoremap <F5> <Esc>:MundoToggle<CR>
nnoremap <leader>g <Esc>:MundoToggle<CR>

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Resize splits when the window is resized
"au VimResized * :wincmd =
" dont autoresize splits
set noequalalways

" resize terminal https://github.com/neovim/neovim/issues/4997
"au TermOpen * au <buffer> BufEnter,WinEnter redraw!

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap - <Esc><C-w>-
nnoremap + <Esc><C-w>+
nnoremap <S-Left> <Esc><C-w><
nnoremap <S-Right> <Esc><C-w>>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

"let g:syntastic_python_python_exec = '/usr/bin/python2'
"let g:syntastic_python_checkers = ['pylint'] " 'python', 'flake8'
let g:syntastic_python_checkers = ['flake8'] " 'python', 'flake8'
"let g:syntastic_python_pylint_args = '--ignore=E501,E265'
let g:syntastic_python_flake8_args = '--ignore=E501,E265'

let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
"let g:syntastic_php_phpcs_args = "--report=csv --standard=Zend"
let g:syntastic_php_phpcs_args = "--report=csv --exclude=Generic.Files.LineLength --standard=PSR1"
"let g:syntastic_php_phpcs_args = "--report=csv --standard=PSR2"
"let g:syntastic_php_phpcs_args = "--report=csv --standard=PEAR"
"let g:syntastic_php_phpcs_args = "--report=csv --standard=".expand('<sfile>:p:h')."~/.vim/misc/phpcs-psr2-excl-linelenght.xml"
"let g:syntastic_php_phpmd_post_args = expand('<sfile>:p:h')."/.vim/misc/phpmd-ruleset.xml"

"let g:syntastic_javascript_jscs_checker = 1
let g:syntastic_javascript_checkers = ['jshint'] " jshint + jsxhint
"let g:syntastic_javascript_jsxhint_exec = 'jsxhint'

" neomake on write
autocmd! BufReadPost,BufWritePost * Neomake
"autocmd! BufWritePost,BufEnter * Neomake
" on insert
"autocmd InsertChange,TextChanged * update | Neomake

"let g:neomake_logfile='/tmp/error.log'
"let g:neomake_verbose = 3
"let g:neomake_open_list = 1
"let g:neomake_php_enabled_makers = ['php', 'phpcs', 'phpmd']
"let g:neomake_echo_current_error = 1
let g:neomake_place_signs = 1
let g:neomake_serialize = 1 " Setting this to 1 tells Neomake to run each enabled maker one after the other.
let g:neomake_serialize_abort_on_error = 0
let g:neomake_error_sign = {
            \ 'text': '✖',
            \ 'texthl': 'NeomakeErrorSign',
            \ }
let g:neomake_warning_sign = {
            \   'text': 'w',
            \   'texthl': 'NeomakeWarningSign',
            \ }
let g:neomake_message_sign = {
            \   'text': 'm',
            \   'texthl': 'NeomakeMessageSign',
            \ }
let g:neomake_info_sign = {
            \ 'text': 'i',
            \ 'texthl': 'NeomakeInfoSign'
            \ }
let g:neomake_highlight_columns = 1
let g:neomake_highlight_lines = 0

let g:neomake_php_phpcs_args_standard = 'PSR1'

let g:neomake_cpp_lint_maker = {
            \ 'exe': 'python2',
            \ 'args': ['../liboam/packages/cpplint/cpplint.py', '--filter=-build/header_guard,-legal/copyright'],
            \ }

"let g:neomake_javascript_enabled_makers = ['eslint']

" neomake syntax highlights
"if has("autocmd")
"    augroup my_neomake_highlights
"        au!
"        autocmd ColorScheme *
"          \ hi link NeomakeError SpellBad
"          \ hi link NeomakeWarning SpellCap
"    augroup END
"endif

" location list
"map gN :Neomake<CR>
map gl :lopen<CR>
map gc :lclose<CR>
map gn :lnext<CR>
map gN :lprevious<CR>

" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
    let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
                \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
    let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
    call append(line("$"), l:modeline)
endfunction
nnoremap <Leader>Ml :call AppendModeline()<CR>

"FOLDING
function! MyFoldText() " {{{
    let line = getline(v:foldstart)
    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart
    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')
    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '?' . repeat(" ",fillcharcount) . foldedlinecount . '?' . ' '
endfunction " }}}
"set foldtext=MyFoldText()
set foldtext=CustomFoldText()

let g:badwolf_html_link_underline = 0

if has("autocmd")
    "let ftToIgnore = ['htxt']
    "autocmd BufWritePre * if index(ftToIgnore, &ft) < 0 | set ... | endif
    autocmd VimEnter * silent! cd %:p:h " change dir to file
    autocmd FileType diff,gitcommit set foldnestmax=0
    autocmd BufEnter *.ctp set syn=php
    autocmd BufEnter *.phtml set syn=php
    autocmd BufEnter COMMIT_EDITMSG set foldnestmax=0
    autocmd BufEnter h.txt,todo.md,.a.log set syn=htxt nowrap foldnestmax=1
    autocmd BufEnter startup_*.log* set syn=mzoamlog nowrap foldnestmax=1
    "autocmd BufEnter *.json set tabstop=2 softtabstop=2 shiftwidth=2

    autocmd FileType json let b:deoplete_disable_auto_complete=1
    autocmd BufEnter *.log,*.LOG,*.gz let b:deoplete_disable_auto_complete=1
    "autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | let b:deoplete_disable_auto_complete=1 | endif
    autocmd BufWinEnter * if line("$") > 10000 | syntax clear | let b:deoplete_disable_auto_complete=1 | endif
endif

" code blocks comment auto
"au BufNewFile,BufRead *.c,*.cc,*.C,*.h imap } <Esc>:call CurlyBracket()<CR>a

fu! CustomFoldText()
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif
    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
    let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

function! CurlyBracket()
    let l:my_linenum = line(".")
    iunmap }
    sil exe "normal i}"
    imap } <Esc>:call CurlyBracket()<CR>
    let l:result1 = searchpair('{', '', '}', 'bW')
    if (result1 > 0)
        let l:my_string = substitute(getline("."), '^\s*\(.*\){', '\1', "")
        sil exe ":" . l:my_linenum
        sil exe "normal a //" . l:my_string
    endif
endfunction

"set clipboard+=unnamed " share X clipboard
"set wildmenu "command line completion wild style
"set wildmode=list:longest "huge list
set wildmode=full

if has("vms")
    set nobackup  " do not keep a backup file, use versions instead
else
    set backup  " keep a backup file
endif
set history=10000  " command line history
set ruler  " show the cursor position all the time
set showcmd  " display incomplete commands
set incsearch  " do incremental searching
set iskeyword+=\$   " $asdff <- one word

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
    set mouse=a
    map <LeftDrag> <nop>
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on
    " Put these in an autocmd group, so that we can delete them easily.
    augroup vimrcEx
        au!
        " For all text files set 'textwidth' to 78 characters.
        autocmd FileType text setlocal textwidth=78
        " When editing a file, always jump to the last known cursor position.
        " Don't do it when the position is invalid or when inside an event handler
        " (happens when dropping a file on gvim).
        " Also don't do it when the mark is in the first line, that is the default
        " position when opening a file.
        autocmd BufReadPost *
                    \ if line("'\"") > 1 && line("'\"") <= line("$") |
                    \   exe "normal! g`\"" |
                    \ endif
    augroup END
else
    set autoindent      " always set autoindenting on
endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif

if has('nvim')
    tnoremap <c-a> <c-\><c-n>
    "colorscheme Revolution
    colorscheme rulex
    set termguicolors
    set ttimeout
    set ttimeoutlen=0
    set pumblend=35
else
    colorscheme rulex
    set timeout
    set timeoutlen=450
    set ttimeoutlen=250
endif

call plug#begin('~/.vim/plugged')
" plugins
Plug 'scrooloose/nerdtree' ", { 'on':  'NERDTreeToggle' }
"Plug 'marcweber/vim-addon-mw-utils' " for snipmate
"Plug 'tomtom/tlib_vim' " for snipmate
"Plug 'garbas/vim-snipmate'

" statusline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'itchyny/lightline.vim'

" auto complete
"Plug 'ervandew/supertab'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
"Plug 'davidhalter/jedi-vim' " python
"Plug 'ternjs/tern_for_vim' " JS
"Plug 'luochen1990/rainbow'
Plug 'will133/vim-dirdiff'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'junegunn/vim-easy-align'
Plug 'simnalamburt/vim-mundo'
Plug 'kshenoy/vim-signature' " vim marks
Plug 'tpope/vim-surround' " change surrounding stuff: csXY
Plug 'tpope/vim-fugitive' " git stuff

Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" syntax/lint stuff
"Plug 'scrooloose/syntastic'
Plug 'neomake/neomake'

Plug 'scrooloose/nerdcommenter' " comments

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
"Plug 'vim-scripts/MultipleSearch2.vim'
"Plug 'vim-scripts/MultipleSearch'

" Plug 'mhinz/vim-startify' " the fancy start screen

" fuzzy finder fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"Plug 'trapd00r/vim-highlight-default-highlight-groups'

" syntax index ftplugin ctags...
Plug 'sheerun/vim-polyglot'

" syntax
Plug 'vim-scripts/httplog'
"Plug 'ap/vim-css-color'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'leafgarland/typescript-vim'
Plug 'mfukar/robotframework-vim'
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bfrg/vim-cpp-modern'
"Plug 'plasticboy/vim-markdown'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'Vimjas/vim-python-pep8-indent'
"Plug 'coala/coala-vim'

call plug#end()

