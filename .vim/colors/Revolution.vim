" Vim color file - Revolution
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

"set t_Co=256
let g:colors_name = "Revolution"

"hi Normal guifg=#f1f1f1 guibg=#000000 guisp=#000000 gui=NONE ctermfg=144 ctermbg=235 cterm=NONE
hi Normal gui=NONE cterm=NONE
hi IncSearch guifg=#bdae88 guibg=#492224 guisp=#492224 gui=NONE ctermfg=144 ctermbg=52 cterm=NONE
hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#192224 guibg=#000000 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#7379c1 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Title guifg=#f00000 guibg=NONE guisp=#492224 gui=NONE ctermfg=249 ctermbg=52 cterm=bold
hi Folded guifg=#f00000 guibg=NONE guisp=NONE gui=bold ctermfg=235 ctermbg=248 cterm=bold
hi PreCondit guifg=#965b3f guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi Include guifg=#c0c000 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Float guifg=#b080d0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#f1f1f1 guibg=#4b4b4b guisp=#4b4b4b gui=NONE ctermfg=144 ctermbg=239 cterm=bold
hi StatusLine guifg=#f1f1f1 guibg=#3b48e3 guisp=#613830 gui=bold ctermfg=144 ctermbg=52 cterm=bold
hi TabLineSel guifg=#00dbdb guibg=#000000 guisp=#4b4b4b gui=bold ctermfg=144 ctermbg=52 cterm=bold
hi TabLineFill guifg=#f1f1f1 guibg=#4b4b4b guisp=#4b4b4b gui=NONE ctermfg=235 ctermbg=239 cterm=bold
hi TabLine guifg=#f1f1f1 guibg=#4b4b4b guisp=#969693 gui=NONE ctermfg=235 ctermbg=246 cterm=bold
hi clear CursorLine
hi CursorLineNR guifg=#f0f000 guibg=NONE guisp=NONE gui=underline
"hi CursorLine guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi LineNr guifg=#4b4b4b guibg=NONE guisp=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#cfcfcf guibg=#a33202 guisp=#a33202 gui=NONE ctermfg=252 ctermbg=130 cterm=NONE
"hi Ignore -- no settings --
hi Debug guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#828282 guisp=#828282 gui=NONE ctermfg=NONE ctermbg=8 cterm=NONE
hi Identifier guifg=#00dbdb guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#a040f0 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Repeat guifg=#7060ff guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi StorageClass guifg=#a040f0 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Todo guifg=#ff0d0d guibg=#f0f000 guisp=#262626 gui=NONE ctermfg=196 ctermbg=235 cterm=NONE
hi Special guifg=#c0c0c0 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Label guifg=#c0c0c0 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#bdae88 guibg=#492224 guisp=#492224 gui=NONE ctermfg=144 ctermbg=52 cterm=NONE
hi PMenu guifg=#bdae88 guibg=#262626 guisp=#262626 gui=NONE ctermfg=144 ctermbg=235 cterm=NONE
hi PMenuThumb guifg=#e6e6e6 guibg=#262626 guisp=#a4a6a8 gui=NONE ctermfg=254 ctermbg=248 cterm=NONE
hi Search guifg=#bdae88 guibg=#3b48e3 guisp=#492224 gui=NONE ctermfg=144 ctermbg=52 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#ee3000 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#a0f050 guibg=NONE guisp=NONE gui=bold ctermfg=137 ctermbg=NONE cterm=NONE
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi EnumerationValue -- no settings --
hi Comment guifg=#666666 guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi Character guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number guifg=#50f550 guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
hi Boolean guifg=#50f550 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Operator guifg=#D11BD1 guibg=NONE guisp=NONE gui=bold ctermfg=253 ctermbg=NONE cterm=bold
hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=bold
hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
"hi Union -- no settings --
"hi Question -- no settings --
hi WarningMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#241919 guisp=#241919 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#dedede guibg=#192224 guisp=#192224 gui=bold ctermfg=253 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#282828 guisp=#282828 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#ff33ff guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=NONE
hi Function guifg=#f0f000 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=bold ctermfg=235 ctermbg=248 cterm=bold
hi PreProc guifg=#D11BD1 guibg=NONE guisp=NONE gui=NONE ctermfg=97 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
"hi MarkdownCodeBlock guifg=#dedede guibg=NONE guisp=NONE gui=BOLD
hi Visual guifg=#bdae88 guibg=#613830 guisp=#613830 gui=NONE ctermfg=144 ctermbg=52 cterm=NONE
hi MoreMsg guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi VertSplit guifg=#262626 guibg=#4b4b4b guisp=#4b4b4b gui=bold ctermfg=235 ctermbg=239 cterm=bold
hi Exception guifg=#b080d0 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Keyword guifg=#835cad guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Type guifg=#1070D0 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#D11BD1 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Cursor guifg=#000000 guibg=#b5b5b5 guisp=#b5b5b5 gui=NONE ctermfg=254 ctermbg=131 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi Constant guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#2090ff guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String guifg=#17B217 guibg=NONE guisp=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#ffffff guibg=#3b48e3 guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi LocalVariable guifg=#f0ddfa guibg=NONE guisp=NONE gui=NONE ctermfg=209 ctermbg=NONE cterm=bold
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi CTagsClass -- no settings --
hi Directory guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Structure guifg=#ff33ff guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=bold
hi Macro guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi cursorim guifg=NONE guibg=#b5b5b5 guisp=#b5b5b5 gui=NONE ctermfg=235 ctermbg=52 cterm=NONE
hi colorcolumn guifg=NONE guibg=#3a3c3e guisp=#3a3c3e gui=NONE ctermfg=NONE ctermbg=237 cterm=NONE
"hi clear -- no settings --

hi xmlTag guifg=#00ff00 guibg=#000000 guisp=#613830 gui=bold ctermfg=144 ctermbg=52 cterm=bold
hi xmlEndTag guifg=#fd42ed guibg=#000000 guisp=#613830 gui=bold ctermfg=144 ctermbg=52 cterm=bold
hi xmlTagName guifg=#fd42ed guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi xmlAttrib guifg=#00dbdb guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi xmlString guifg=#50d050 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

hi htmlTag guifg=#00a000 guibg=#000000 guisp=#613830 gui=bold ctermfg=144 ctermbg=52 cterm=bold
hi htmlEndTag guifg=#00a000 guibg=#000000 guisp=#613830 gui=bold ctermfg=144 ctermbg=52 cterm=bold
hi htmlTagName guifg=#e040e0 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi htmlSpecialTagName guifg=#ff5070 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi htmlSpecialChar guifg=#60e0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi htmlArg guifg=#00dbdb guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi htmlString guifg=#50d050 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi htmlComment guifg=#ff5070 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi htmlLink guifg=#e0e0e0 guibg=NONE guisp=NONE gui=underline ctermfg=1 ctermbg=NONE cterm=NONE
hi htmlCommentPart guifg=#606060 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

"hi phpMemberSelector guifg=#ff5070 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi phpComparison guifg=#dd22dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi phpFunctionsTag guifg=#f0f050 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi phpSpecialFunction guifg=#2090ff guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi phpVarSelector guifg=#3070a0 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi phpParent guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi phpStructure guifg=#ad22dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi phpDefine guifg=#fd42ed guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi phpOperator guifg=#ff22ee guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi phpRelation guifg=#ff22ee guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

hi cssBraces guifg=#c0f0c0
hi cssClassName guifg=#c0f0c0
hi cssColor guifg=#c0f0c0

