" Vim color file
" Maintainer: github.com/rulex

hi clear

let colors_name = "delek"

" Normal should come first
hi Normal     guifg=White  guibg=Black
hi Cursor     guifg=bg     guibg=fg
hi lCursor    guifg=NONE   guibg=Cyan

" Note: we never set 'term' because the defaults for B&W terminals are OK
hi Delimiter  ctermfg=Red          ctermbg=NONE cterm=NONE
hi MatchParen ctermbg=Blue         guibg=blue
hi DiffAdd    ctermbg=LightBlue    guibg=LightBlue
hi DiffChange ctermbg=LightMagenta guibg=LightMagenta
hi DiffDelete ctermfg=Blue         ctermbg=LightCyan
hi DiffText   ctermbg=Red          cterm=bold
hi Directory  ctermfg=DarkBlue     guifg=Blue
hi ErrorMsg   ctermfg=White        ctermbg=DarkRed
hi FoldColumn ctermfg=DarkBlue     ctermbg=Grey
hi Folded     ctermbg=Black       cterm=bold       ctermfg=Red
hi IncSearch  cterm=reverse        gui=reverse
hi LineNr     ctermfg=Brown        guifg=Brown
hi ModeMsg    cterm=NONE
hi MoreMsg    ctermfg=DarkGreen
hi Pmenu      guibg=LightBlue
hi PmenuSel   ctermfg=White        ctermbg=DarkBlue  guifg=White  guibg=DarkBlue
hi Question   ctermfg=DarkGreen    gui=bold guifg=SeaGreen
hi Search     ctermfg=grey         ctermbg=DarkBlue guibg=Yellow guifg=NONE
hi StatusLine cterm=NONE           ctermbg=blue ctermfg=white guibg=gold guifg=blue
"hi StatusLineNC  cterm=bold        ctermbg=blue ctermfg=black  guibg=gold guifg=blue
hi TabLineFill ctermbg=Black
"hi TabLine    ctermbg=DarkGrey ctermfg=Gray
hi TabLineSel ctermbg=Black
hi clear CursorLine
hi CursorLineNR cterm=underline
hi CursorLine ctermfg=NONE ctermbg=NONE
hi SpecialKey ctermfg=DarkGrey     guifg=Blue
hi NonText    ctermfg=DarkGrey
hi Title      ctermfg=DarkMagenta  ctermbg=Black gui=bold guifg=Magenta
hi VertSplit  cterm=reverse        gui=reverse
hi Visual     ctermbg=NONE         cterm=reverse gui=reverse guifg=Grey guibg=fg
hi VisualNOS  cterm=underline,bold gui=underline,bold
hi WarningMsg ctermfg=DarkRed                                guifg=Red
hi WildMenu   ctermfg=Black                                  ctermbg=Yellow    guibg=Yellow guifg=Black

" syntax highlighting
hi Comment    cterm=NONE ctermfg=DarkGrey
hi Constant   cterm=NONE ctermfg=DarkGreen
hi Identifier cterm=NONE ctermfg=DarkCyan
hi PreProc    cterm=NONE ctermfg=Magenta
hi Special    cterm=NONE ctermfg=LightRed
hi Statement  cterm=NONE ctermfg=Blue
hi Type       cterm=NONE ctermfg=Blue

" for gitgutter
hi clear SignColumn

hi htmlTag ctermfg=Green
hi htmlEndTag ctermfg=Green
hi htmlTagName ctermfg=Magenta ctermbg=NONE cterm=NONE
hi htmlSpecialTagName ctermfg=Red ctermbg=NONE cterm=NONE
hi htmlSpecialChar ctermfg=LightCyan ctermbg=NONE cterm=NONE
hi htmlArg ctermfg=Cyan ctermbg=NONE cterm=NONE
"hi htmlString ctermfg=SeaGreen ctermbg=NONE cterm=NONE
hi htmlComment ctermfg=Red ctermbg=NONE cterm=NONE

hi phpMemberSelector ctermfg=Red
hi phpComparison ctermfg=LightMagenta
hi phpParent ctermfg=Red
hi phpFunctions ctermfg=LightBlue ctermbg=NONE cterm=NONE
hi phpSpecialFunction ctermfg=LightBlue ctermbg=NONE cterm=NONE
hi phpVarSelector ctermfg=Cyan ctermbg=NONE cterm=NONE
hi phpStructure ctermfg=Magenta ctermbg=NONE cterm=NONE
hi phpDefine ctermfg=Magenta ctermbg=NONE cterm=NONE
hi phpOperator ctermfg=Magenta ctermbg=NONE cterm=NONE
hi phpRelation ctermfg=Magenta ctermbg=NONE cterm=NONE

hi javaScriptBraces ctermfg=Cyan
hi javaScriptParens ctermfg=Cyan
hi javaScriptNumber ctermfg=Cyan

hi cssBraces ctermfg=Cyan
hi cssClassName ctermfg=Cyan
hi cssColor ctermfg=Cyan

