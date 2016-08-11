
if v:progname =~? "evim"
	finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
"set nocompatible
set modeline
set background=dark
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

filetype plugin on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set iskeyword+=$
set undofile
set undodir=~/.vim/undo/
set backupdir=~/.vim/backups/
set directory=~/.vim/swap/
set nu " line numbers
set norelativenumber
set autochdir " switch to current file dir
map <Tab> <Esc>:tabn<CR>
map <Right> <Esc>:tabn<CR>
map <S-Tab> <Esc>:tabp<CR>
map <Left> <Esc>:tabp<CR>
map <BS> <Esc>:noh<CR>
set formatoptions=q
set ruler
"set nocursorline
set cursorline
set scrolljump=1        " lines to scroll when cursor leaves screen
set scrolloff=5         " minimum lines to keep above and below cursor
set laststatus=2        " show statusline allways
set statusline=%F       " tail of the filename
set statusline+=%m      " modified flag
set statusline+=%=      " left/right separator
set statusline+=[U+%B]  " show ASCII value of char under cursor
"set statusline+=[%F]
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] " file format
set statusline+=%h      " help file flag
set statusline+=%r      " read only flag
set statusline+=%y\     " filetype
set statusline+=%c,     " cursor column
set statusline+=%l/%L   " cursor line/total lines
set statusline+=\ %P    " percent through file
set synmaxcol=512       " Syntax coloring slows
"set ttyfast
"set ttyscroll=3
set lazyredraw " avoid scrolling problems

":command
command! Sw w !sudo tee > /dev/null %
"command! Sw :execute ':silent w !sudo tee % > /dev/null' | :edit!
nmap <M-1> :tabnext 1<CR>
nmap <M-2> :tabnext 2<CR>
nmap <M-3> :tabnext 3<CR>
nmap <M-4> :tabnext 4<CR>
nmap <M-5> :tabnext 5<CR>
nmap <M-6> :tabnext 6<CR>
nmap <M-7> :tabnext 7<CR>
nmap <M-8> :tabnext 8<CR>
nmap <M-9> :tabnext 9<CR>
nmap <M-0> :tabnext 10<CR>

nmap <F8> :TagbarToggle<CR>
nmap <F7> :SyntasticToggleMode<CR>

" fold
set foldmethod=indent
set foldnestmax=2
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

nnoremap ö <Esc>:
nnoremap ä <Esc>"
"nnoremap å [
"nnoremap ¨ ]

" clipboard/paste stuff
nnoremap <F10> <Esc>:set paste!<CR>:set paste?<CR>
nnoremap <leader>p <Esc>"*p
vmap <leader>y "*y
nnoremap <leader>y <Esc>:w !xclip<CR>

" insert date time
nnoremap <leader>D <Esc>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>
" cursor over timestamp to %Y-%m-%d %H:%M:%S
map gD yiw:r!date +"\%Y-\%m-\%d \%H:\%M:\%S" --date @"<C-R>""<CR>

" yank full filepath
nmap cp <Esc>:let @" = expand("%:p")<CR>

" quick calc stuff
map gbc yypkA =<Esc>jOscale=2<Esc>:.,+1!bc<CR>kJ
"vmap gbc ypko=<Esc>jOscale=2<Esc>:.,+1!bc<CR>kJ
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
nnoremap <leader>f <Esc>:set fdm=indent<CR>:set fdm?<CR>
nnoremap <leader>fi <Esc>:set fdm=indent<CR>:set fdm?<CR>
nnoremap <leader>fs <Esc>:set fdm=syntax<CR>:set fdm?<CR>
nnoremap <leader>fm <Esc>:set fdm=manual<CR>:set fdm?<CR>
nnoremap <leader><F1> <Esc>:set foldnestmax=1<CR>:set foldnestmax?<CR>
nnoremap <leader><F2> <Esc>:set foldnestmax=2<CR>:set foldnestmax?<CR>
nnoremap <leader><F3> <Esc>:set foldnestmax=3<CR>:set foldnestmax?<CR>
nnoremap <leader><F4> <Esc>:set foldnestmax=4<CR>:set foldnestmax?<CR>
nnoremap <leader><F5> <Esc>:set foldnestmax=5<CR>:set foldnestmax?<CR>
nnoremap <leader><F6> <Esc>:set foldnestmax=6<CR>:set foldnestmax?<CR>
nnoremap <leader>u <Esc>:set expandtab? tabstop? softtabstop? shiftwidth? smarttab?<CR>
nnoremap <leader>uu <Esc>:set expandtab? tabstop? softtabstop? shiftwidth? smarttab?<CR>
nnoremap <leader>ue <Esc>:setl expandtab!<CR>:set expandtab?<CR>
nnoremap <leader>u2 <Esc>:setl tabstop=2 softtabstop=2 shiftwidth=2<CR>:set tabstop? softtabstop? shiftwidth?<CR>
nnoremap <leader>u4 <Esc>:setl tabstop=4 softtabstop=4 shiftwidth=4<CR>:set tabstop? softtabstop? shiftwidth?<CR>
nnoremap <leader>u8 <Esc>:setl tabstop=8 softtabstop=8 shiftwidth=8<CR>:set tabstop? softtabstop? shiftwidth?<CR>

" switch syntastic phpcs standards
nnoremap <leader>sz <Esc>:let g:syntastic_php_phpcs_args = "--report=csv --standard=Zend"<CR>:SyntasticCheck<CR>:echo "phpcs standard Zend"<CR>
nnoremap <leader>sp <Esc>:let g:syntastic_php_phpcs_args = "--report=csv --standard=PEAR"<CR>:SyntasticCheck<CR>:echo "phpcs standard PEAR"<CR>
nnoremap <leader>sp1 <Esc>:let g:syntastic_php_phpcs_args = "--report=csv --standard=PSR1"<CR>:SyntasticCheck<CR>:echo "phpcs standard PSR1"<CR>
nnoremap <leader>sp2 <Esc>:let g:syntastic_php_phpcs_args = "--report=csv --standard=PSR2"<CR>:SyntasticCheck<CR>:echo "phpcs standard PSR2"<CR>

" encoding
nnoremap <leader>C <Esc>:set fileencoding? fileformat? encoding? bomb?<CR>

" remove stuff
nnoremap <leader>r <Esc>:%s/\s\+$//<CR> " remove extra spaces from line end
nnoremap <leader>re <Esc>:g/^$/d<CR> " remove empty lines
nnoremap <leader>rm <Esc>:%s/\r$//g<CR> " remove lines ending with ^M
nnoremap <leader>k <Esc>:set list!<CR>:set list?<CR>

" splits tabs
nnoremap <leader>% <Esc><C-w>v<C-w>l
nnoremap <leader>" <Esc><C-w>s
nnoremap <c-w>% <Esc><C-w>v<C-w>l
nnoremap <c-w>" <Esc><C-w>s
nnoremap <leader>n <Esc>:NERDTreeToggle<CR>
nnoremap <leader>e <Esc>:e<CR>
nnoremap <leader>et <Esc>:term<CR>
nnoremap <leader>ee <Esc>:e!<CR>
nnoremap <leader>e. <Esc>:e .<CR>
nnoremap <leader>em <Esc>:e $MYVIMRC<CR>
nnoremap <leader>tt <Esc>:tabnew<CR>
nnoremap <leader>t. <Esc>:tabnew .<CR>
nnoremap <leader>te <Esc>:tabnew<CR>:term<CR>
nnoremap <leader>tf <Esc>:tabnew %<CR>

" diff
nnoremap <leader>dd <Esc>:diffthis<CR>
nnoremap <leader>du <Esc>:diffupdate<CR>
nnoremap <leader>ddd <Esc>:diffthis<CR><c-w><c-w>:diffthis<CR><c-w><c-w>
nnoremap <leader>do <Esc>:diffoff<CR>
nnoremap <leader>doo <Esc>:diffoff<CR><c-w><c-w>:diffoff<CR><c-w><c-w>
nnoremap <leader>dn ]c
nnoremap <leader>dN [c
nnoremap <leader>q <Esc>:q<CR>
nnoremap <leader>qq <Esc>:qa<CR>
nnoremap <leader>qqq <Esc>:qa!<CR>

nnoremap <leader><Left> :tabmove -1<CR>
nnoremap <leader><Right> :tabmove +1<CR>
nnoremap <leader><Up> :tabmove 0<CR>
" highlight git merge stuff
nnoremap <leader>/ <Esc>/^<<<<<<<\\|^=======\\|^>>>>>>><CR>

set list
set listchars=tab:\»\ ,trail:·

inoremap jk <Esc>
inoremap kj <Esc>
inoremap <C-a> <Esc>

nnoremap , za
vnoremap , za

vnoremap qq <Esc>`>a'<Esc>`<i'<Esc>
" pretty json
nnoremap <leader>js <Esc>:%!python -m json.tool<CR>
nnoremap gjs <Esc>:.!python -m json.tool<CR>
vnoremap gjs !python -m json.tool<CR>

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap / /\c
nnoremap // /

" Mundo
"nnoremap <F5> :MundoToggle<CR>
"nnoremap <leader>g <Esc>:MundoToggle<CR>

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Resize splits when the window is resized
au VimResized * :wincmd =

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
"let g:syntastic_python_python_exec = '/usr/bin/python2'
let g:syntastic_python_flake8_args = '--ignore=E501,E265'
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
"let g:syntastic_php_phpcs_args = "--report=csv --standard=Zend"
let g:syntastic_php_phpcs_args = "--report=csv --standard=PSR1"
"let g:syntastic_php_phpcs_args = "--report=csv --standard=PSR2"
"let g:syntastic_php_phpcs_args = "--report=csv --standard=PEAR"
"let g:syntastic_php_phpcs_args = "--report=csv --standard=".expand('<sfile>:p:h')."~/.vim/misc/phpcs-psr2-excl-linelenght.xml"
"let g:syntastic_php_phpmd_post_args = expand('<sfile>:p:h')."/.vim/misc/phpmd-ruleset.xml"


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
	autocmd BufEnter *.ctp set syn=php
	autocmd BufEnter *.phtml set syn=php
endif

" code blocks comment auto
au BufNewFile,BufRead *.c,*.cc,*.C,*.h imap } <Esc>:call CurlyBracket()<CR>a

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

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
	set mouse=a
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
	set autoindent		" always set autoindenting on
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
	colorscheme delek
	set ttimeout
	set ttimeoutlen=0
else
	colorscheme delek
	set timeout
	set timeoutlen=450
	set ttimeoutlen=250
endif

call plug#begin('~/.vim/plugged')
" plugins
Plug 'scrooloose/nerdtree' ", { 'on':  'NERDTreeToggle' }
Plug 'marcweber/vim-addon-mw-utils' " for snipmate
Plug 'tomtom/tlib_vim' " for snipmate
Plug 'garbas/vim-snipmate'
Plug 'ervandew/supertab'
"Plug 'Shougo/deoplete.nvim'
"Plug 'davidhalter/jedi-vim' " python
"Plug 'ternjs/tern_for_vim' " JS
Plug 'luochen1990/rainbow'
Plug 'junegunn/vim-easy-align'
Plug 'simnalamburt/vim-mundo'
Plug 'kshenoy/vim-signature' " vim marks
Plug 'tpope/vim-surround' " change surrounding stuff: csXY

Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

Plug 'scrooloose/syntastic' " syntax/lint stuff

Plug 'scrooloose/nerdcommenter' " comments

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

"Plug 'trapd00r/vim-highlight-default-highlight-groups'

" syntax
Plug 'vim-scripts/httplog'
Plug 'vim-scripts/css_color'
call plug#end()


