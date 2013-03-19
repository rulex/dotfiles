" Vim color file
" Maintainer:	David Schweikert <dws@ee.ethz.ch>
" Last Change:	2006 Apr 30

hi clear

let colors_name = "delek"

" Normal should come first
hi Normal     guifg=Black  guibg=White
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi MatchParen ctermbg=Blue guibg=blue
hi DiffAdd    ctermbg=LightBlue    guibg=LightBlue
hi DiffChange ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete ctermfg=Blue         ctermbg=LightCyan	gui=bold		guifg=Blue	guibg=LightCyan
hi DiffText   ctermbg=Red          cterm=bold		gui=bold	guibg=Red
hi Directory  ctermfg=DarkBlue     guifg=Blue
hi ErrorMsg   ctermfg=White        ctermbg=DarkRed  guibg=Red                            	 guifg=White
hi FoldColumn ctermfg=DarkBlue     ctermbg=Grey     guibg=Magenta                           	 guifg=DarkBlue
hi Folded     ctermbg=Black		   cterm=bold	ctermfg=Red	guibg=Magenta	guifg=DarkBlue
hi IncSearch  cterm=reverse        gui=reverse
hi LineNr     ctermfg=Brown        guifg=Brown
hi ModeMsg    cterm=bold           gui=bold
hi MoreMsg    ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi NonText    ctermfg=Blue         gui=bold guifg=gray guibg=white
hi Pmenu      guibg=LightBlue
hi PmenuSel   ctermfg=White        ctermbg=DarkBlue  guifg=White  guibg=DarkBlue
hi Question   ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi Search     ctermfg=grey         ctermbg=DarkBlue guibg=Yellow guifg=NONE
hi SpecialKey ctermfg=DarkBlue     guifg=Blue
hi StatusLine cterm=bold           ctermbg=blue ctermfg=white guibg=gold guifg=blue
"hi StatusLineNC  cterm=bold        ctermbg=blue ctermfg=black  guibg=gold guifg=blue
hi TabLineFill ctermbg=Black
"hi TabLine    ctermbg=DarkGrey ctermfg=Gray
hi TabLineSel ctermbg=Black
hi clear CursorLine
hi CursorLineNR cterm=underline
hi Title      ctermfg=DarkMagenta  ctermbg=Black gui=bold guifg=Magenta
hi VertSplit  cterm=reverse        gui=reverse
hi Visual     ctermbg=NONE         cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS  cterm=underline,bold gui=underline,bold
hi WarningMsg ctermfg=DarkRed                              	 guifg=Red
hi WildMenu   ctermfg=Black                                	 ctermbg=Yellow    guibg=Yellow guifg=Black

" syntax highlighting
hi Comment    cterm=NONE ctermfg=DarkBlue    gui=NONE guifg=red2
hi Constant   cterm=NONE ctermfg=DarkGreen   gui=NONE guifg=green3
hi Identifier cterm=NONE ctermfg=DarkCyan    gui=NONE guifg=cyan4
hi PreProc    cterm=NONE ctermfg=Magenta	 gui=NONE guifg=magenta3
hi Special    cterm=NONE ctermfg=LightRed    gui=NONE guifg=deeppink
hi Statement  cterm=bold ctermfg=Blue	     gui=bold guifg=blue
hi Type	      cterm=NONE ctermfg=Blue	     gui=bold guifg=blue

" for gitgutter
hi clear SignColumn

" vim: sw=2
