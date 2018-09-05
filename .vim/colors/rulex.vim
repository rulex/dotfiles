" Vim color file
" Maintainer: github.com/rulex

hi  clear

let colors_name = "rulex"

" Normal should come first

" Blue         #4d4dff
" Brown orange #dd9015
" Cursor green #17b217
" Red          #ff6565
" Magenta      #d170d1

hi clear        CursorLine
hi Normal       cterm=NONE           ctermfg=NONE        ctermbg=NONE     gui=NONE           guifg=NONE        guibg=NONE
hi Cursor       cterm=NONE           ctermfg=NONE        ctermbg=NONE     gui=NONE           guifg=NONE        guibg=NONE
hi lCursor      cterm=NONE           ctermfg=NONE        ctermbg=NONE     gui=NONE           guifg=NONE        guibg=Cyan
hi Include      cterm=NONE           ctermfg=Yellow      ctermbg=NONE     gui=NONE           guifg=Yellow      guibg=NONE
hi Delimiter    cterm=NONE           ctermfg=Red         ctermbg=NONE     gui=NONE           guifg=Red         guibg=NONE
hi MatchParen   cterm=NONE           ctermfg=NONE        ctermbg=Blue     gui=NONE           guifg=White       guibg=#4d4dff
hi Directory    cterm=NONE           ctermfg=DarkBlue    ctermbg=NONE     gui=NONE           guifg=DarkCyan    guibg=NONE
hi ErrorMsg     cterm=NONE           ctermfg=White       ctermbg=DarkRed  gui=NONE           guifg=White       guibg=DarkRed
hi FoldColumn   cterm=NONE           ctermfg=DarkBlue    ctermbg=Grey     gui=NONE           guifg=Blue        guibg=Gray40
hi Folded       cterm=NONE           ctermfg=Red         ctermbg=NONE     gui=NONE           guifg=#ff6565     guibg=NONE
hi IncSearch    cterm=reverse        ctermfg=NONE        ctermbg=NONE     gui=reverse        guifg=NONE        guibg=NONE
hi LineNr       cterm=NONE           ctermfg=Brown       ctermbg=NONE     gui=NONE           guifg=#dd9015     guibg=NONE
hi ModeMsg      cterm=NONE           ctermfg=NONE        ctermbg=NONE     gui=NONE           guifg=NONE        guibg=NONE
hi MoreMsg      cterm=NONE           ctermfg=DarkGreen   ctermbg=NONE     gui=NONE           guifg=Green       guibg=NONE
hi Conditional  cterm=bold           ctermfg=Blue        ctermbg=NONE     gui=NONE           guifg=#4d4dff     guibg=NONE
hi Pmenu        cterm=NONE           ctermfg=Black       ctermbg=Magenta  gui=NONE           guifg=White       guibg=Gray
hi PmenuSel     cterm=NONE           ctermfg=White       ctermbg=DarkBlue gui=bold           guifg=White       guibg=#4d4dff
hi Question     cterm=NONE           ctermfg=DarkGreen   ctermbg=NONE     gui=NONE           guifg=Green       guibg=NONE
hi Search       cterm=NONE           ctermfg=grey        ctermbg=DarkBlue gui=NONE           guifg=White       guibg=#4d4dff
hi StatusLine   cterm=NONE           ctermfg=White       ctermbg=Blue     gui=NONE           guifg=White       guibg=#4d4dff
hi TabLine      cterm=NONE           ctermfg=White       ctermbg=Grey     gui=NONE           guifg=White       guibg=Gray40
hi TabLineFill  cterm=NONE           ctermfg=NONE        ctermbg=Black    gui=NONE           guifg=NONE        guibg=Gray
hi TabLineSel   cterm=NONE           ctermfg=NONE        ctermbg=Black    gui=bold           guifg=White       guibg=Black
hi CursorLineNR cterm=underline      ctermfg=NONE        ctermbg=NONE     gui=underline      guifg=NONE        guibg=NONE
hi CursorLine   cterm=NONE           ctermfg=NONE        ctermbg=NONE     gui=NONE           guifg=NONE        guibg=NONE
hi SpecialKey   cterm=NONE           ctermfg=DarkGray    ctermbg=NONE     gui=NONE           guifg=Gray        guibg=NONE
hi NonText      cterm=NONE           ctermfg=DarkGray    ctermbg=NONE     gui=NONE           guifg=Gray40      guibg=NONE
hi Title        cterm=NONE           ctermfg=DarkMagenta ctermbg=NONE     gui=NONE           guifg=#d170d1     guibg=NONE
hi VertSplit    cterm=reverse        ctermfg=NONE        ctermbg=NONE     gui=reverse        guifg=NONE        guibg=NONE
hi Visual       cterm=reverse        ctermfg=NONE        ctermbg=NONE     gui=reverse        guifg=NONE        guibg=NONE
hi VisualNOS    cterm=underline,bold ctermfg=NONE        ctermbg=NONE     gui=underline,bold guifg=NONE        guibg=NONE
hi WarningMsg   cterm=NONE           ctermfg=DarkRed     ctermbg=NONE     gui=NONE           guifg=Red         guibg=NONE
hi WildMenu     cterm=NONE           ctermfg=Black       ctermbg=Yellow   gui=NONE           guifg=Black       guibg=Yellow
hi Comment      cterm=NONE           ctermfg=DarkGrey    ctermbg=NONE     gui=NONE           guifg=Gray50      guibg=NONE
hi Whitespace   cterm=NONE           ctermfg=DarkGrey    ctermbg=NONE     gui=NONE           guifg=Gray40      guibg=NONE
hi Constant     cterm=NONE           ctermfg=DarkGreen   ctermbg=NONE     gui=NONE           guifg=#17b217     guibg=NONE
hi Function     cterm=NONE           ctermfg=Cyan        ctermbg=NONE     gui=NONE           guifg=Cyan        guibg=NONE
hi Structure    cterm=NONE           ctermfg=Cyan        ctermbg=NONE     gui=NONE           guifg=LightCyan   guibg=NONE
hi Identifier   cterm=NONE           ctermfg=DarkCyan    ctermbg=NONE     gui=NONE           guifg=Cyan        guibg=NONE
hi PreProc      cterm=NONE           ctermfg=Magenta     ctermbg=NONE     gui=NONE           guifg=#d170d1     guibg=NONE
hi Special      cterm=NONE           ctermfg=LightRed    ctermbg=NONE     gui=NONE           guifg=LightRed    guibg=NONE
hi Statement    cterm=NONE           ctermfg=Yellow      ctermbg=NONE     gui=NONE           guifg=Yellow      guibg=NONE
hi Type         cterm=NONE           ctermfg=Blue        ctermbg=NONE     gui=NONE           guifg=#3362ff     guibg=NONE
hi SpellBad     cterm=NONE           ctermfg=Blue        ctermbg=White    gui=NONE           guifg=#4d4dff     guibg=White
hi SpellCap     cterm=NONE           ctermfg=Blue        ctermbg=White    gui=NONE           guifg=#4d4dff     guibg=White

"hi StatusLineNC         cterm=bold        ctermbg=blue ctermfg=black  guibg=gold guifg=blue
"hi TabLine              ctermbg=DarkGrey ctermfg=Gray

" filetype=diff
hi DiffFile       cterm=NONE      ctermfg=Yellow ctermbg=NONE gui=NONE guifg=Yellow  guibg=NONE
hi DiffAdded      cterm=NONE      ctermfg=Green  ctermbg=NONE gui=NONE guifg=#17b217 guibg=NONE
hi DiffRemoved    cterm=NONE      ctermfg=Red    ctermbg=NONE gui=NONE guifg=Red     guibg=NONE

" vimdiff
hi DiffAdd        cterm=NONE      ctermfg=NONE   ctermbg=NONE gui=NONE guifg=NONE    guibg=NONE
hi DiffChange     cterm=bold      ctermfg=NONE   ctermbg=NONE gui=bold guifg=NONE    guibg=NONE
hi DiffDelete     cterm=NONE      ctermfg=Red    ctermbg=NONE gui=NONE guifg=Red     guibg=NONE
hi DiffText       cterm=reverse   ctermfg=NONE   ctermbg=NONE gui=NONE guifg=NONE    guibg=NONE

" Neomake highlighting
"hi NeomakeError       cterm=underline ctermfg=NONE ctermbg=NONE guibg=NONE guifg=Red
"hi NeomakeWarning     cterm=underline ctermfg=NONE ctermbg=NONE guibg=NONE guifg=Yellow
hi NeomakeWarningSign cterm=underline ctermfg=NONE ctermbg=NONE guibg=NONE guifg=Yellow
hi NeomakeInfoSign    cterm=underline ctermfg=NONE ctermbg=NONE guibg=NONE guifg=Green
hi NeomakeErrorSign   cterm=underline ctermfg=NONE ctermbg=NONE guibg=NONE guifg=Red
"hi NeomakeMessageSign

"hi NeomakeErrorDefault
"hi NeomakeErrorSignDefault
"hi NeomakeInfo
"hi NeomakeInfoDefault
"hi NeomakeInfoSignDefault
"hi NeomakeMessage
"hi NeomakeMessageDefault
"hi NeomakeMessageSignDefault
"hi NeomakeWarningDefault
"hi NeomakeWarningSignDefault

" for gitgutter
hi  clear                 SignColumn

hi  htmlTag               ctermfg=Green        ctermbg=NONE     cterm=NONE      gui=NONE guifg=Green        guibg=NONE
hi  htmlEndTag            ctermfg=Green        ctermbg=NONE     cterm=NONE      gui=NONE guifg=Green        guibg=NONE
hi  htmlTagName           ctermfg=Magenta      ctermbg=NONE     cterm=NONE      gui=NONE guifg=#d170d1      guibg=NONE
hi  htmlSpecialTagName    ctermfg=Red          ctermbg=NONE     cterm=NONE      gui=NONE guifg=Red          guibg=NONE
hi  htmlSpecialChar       ctermfg=LightCyan    ctermbg=NONE     cterm=NONE      gui=NONE guifg=LightCyan    guibg=NONE
hi  htmlArg               ctermfg=Cyan         ctermbg=NONE     cterm=NONE      gui=NONE guifg=Cyan         guibg=NONE
hi  htmlString            ctermfg=DarkGreen    ctermbg=NONE     cterm=NONE      gui=NONE guifg=DarkGreen    guibg=NONE
hi  htmlComment           ctermfg=Red          ctermbg=NONE     cterm=NONE      gui=NONE guifg=Red          guibg=NONE
hi  htmlCommentPart       ctermfg=DarkGrey     ctermbg=NONE     cterm=NONE      gui=NONE guifg=DarkGrey     guibg=NONE

hi  phpMemberSelector     ctermfg=White        ctermbg=NONE     cterm=NONE      gui=NONE guifg=White        guibg=NONE
hi  phpComparison         ctermfg=Magenta      ctermbg=NONE     cterm=NONE      gui=NONE guifg=#d170d1      guibg=NONE
hi  phpParent             ctermfg=Yellow       ctermbg=NONE     cterm=NONE      gui=NONE guifg=Yellow       guibg=NONE
"hi  phpFunctions          ctermfg=Blue         ctermbg=NONE     cterm=NONE      gui=NONE guifg=#4d4dff      guibg=NONE
"hi  phpSpecialFunction    ctermfg=LightBlue    ctermbg=NONE     cterm=NONE      gui=NONE guifg=LightBlue    guibg=NONE
hi  phpVarSelector        ctermfg=Blue         ctermbg=NONE     cterm=NONE      gui=NONE guifg=#4d4dff      guibg=NONE
hi  phpStructure          ctermfg=Magenta      ctermbg=NONE     cterm=NONE      gui=NONE guifg=#d170d1      guibg=NONE
hi  phpDefine             ctermfg=Magenta      ctermbg=NONE     cterm=NONE      gui=NONE guifg=#d170d1      guibg=NONE
hi  phpOperator           ctermfg=Magenta      ctermbg=NONE     cterm=NONE      gui=NONE guifg=#d170d1      guibg=NONE
hi  phpRelation           ctermfg=Magenta      ctermbg=NONE     cterm=NONE      gui=NONE guifg=#d170d1      guibg=NONE
hi  phpConditional        ctermfg=Blue         ctermbg=NONE     cterm=NONE      gui=NONE guifg=#4d4dff      guibg=NONE
hi  phpStatement          ctermfg=Yellow       ctermbg=NONE     cterm=NONE      gui=NONE guifg=Yellow       guibg=NONE
hi  phpException          ctermfg=Magenta      ctermbg=NONE     cterm=NONE      gui=NONE guifg=#d170d1      guibg=NONE
hi  phpAssignByRef        ctermfg=Cyan         ctermbg=NONE     cterm=NONE      gui=NONE guifg=Cyan         guibg=NONE

hi  javaScript            ctermfg=NONE         ctermbg=NONE     cterm=NONE      gui=NONE guifg=NONE         guibg=NONE
hi  javaScriptType        ctermfg=Blue         ctermbg=NONE     cterm=NONE      gui=NONE guifg=#4d4dff      guibg=NONE
hi  javaScriptBraces      ctermfg=Cyan         ctermbg=NONE     cterm=NONE      gui=NONE guifg=Cyan         guibg=NONE
hi  javaScriptParens      ctermfg=Yellow       ctermbg=NONE     cterm=NONE      gui=NONE guifg=Yellow       guibg=NONE
hi  javaScriptNumber      ctermfg=DarkGreen    ctermbg=NONE     cterm=NONE      gui=NONE guifg=Green        guibg=NONE
hi  javaScriptFunction    ctermfg=Yellow       ctermbg=NONE     cterm=NONE      gui=NONE guifg=Yellow       guibg=NONE
hi  javaScriptReserved    ctermfg=Yellow       ctermbg=NONE     cterm=bold      gui=bold guifg=Yellow       guibg=NONE
hi  javaScriptOperator    ctermfg=Yellow       ctermbg=NONE     cterm=NONE      gui=NONE guifg=Yellow       guibg=NONE
hi  javaScriptConditional ctermfg=Blue         ctermbg=NONE     cterm=NONE      gui=NONE guifg=#4d4dff      guibg=NONE
hi  javaScriptGlobal      ctermfg=Magenta      ctermbg=NONE     cterm=NONE      gui=NONE guifg=#d170d1      guibg=NONE
hi  javaScriptStatement   ctermfg=Yellow       ctermbg=NONE     cterm=NONE      gui=NONE guifg=Yellow       guibg=NONE

hi  jsonBraces            ctermfg=Cyan         ctermbg=NONE     cterm=NONE      gui=NONE guifg=Cyan         guibg=NONE

hi  cssBraces             ctermfg=Cyan         ctermbg=NONE     cterm=NONE      gui=NONE guifg=Cyan         guibg=NONE
hi  cssClassName          ctermfg=Cyan         ctermbg=NONE     cterm=NONE      gui=NONE guifg=Cyan         guibg=NONE
hi  cssColor              ctermfg=Cyan         ctermbg=NONE     cterm=NONE      gui=NONE guifg=Cyan         guibg=NONE

