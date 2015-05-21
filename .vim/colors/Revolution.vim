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

hi IncSearch guifg=#bdae88 guibg=#492224 guisp=#492224 gui=NONE ctermfg=144 ctermbg=52 cterm=NONE
hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Title guifg=#b5b5b5 guibg=#492224 guisp=#492224 gui=bold ctermfg=249 ctermbg=52 cterm=bold
hi Folded guifg=#ff0000 guibg=NONE guisp=NONE gui=bold ctermfg=235 ctermbg=248 cterm=bold
hi PreCondit guifg=#965b3f guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi Include guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Float guifg=#b080d0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#bdae88 guibg=#4b4b4b guisp=#4b4b4b gui=bold ctermfg=144 ctermbg=239 cterm=bold
"hi CTagsMember -- no settings --
hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#cfcfcf guibg=#a33202 guisp=#a33202 gui=NONE ctermfg=252 ctermbg=130 cterm=NONE
"hi Ignore -- no settings --
hi Debug guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#828282 guisp=#828282 gui=NONE ctermfg=NONE ctermbg=8 cterm=NONE
hi Identifier guifg=#00dbdb guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#4090ff guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi StorageClass guifg=#4090ff guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Todo guifg=#ff0d0d guibg=#262626 guisp=#262626 gui=NONE ctermfg=196 ctermbg=235 cterm=NONE
hi Special guifg=#c0c0c0 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi LineNr guifg=#525252 guibg=NONE guisp=NONE gui=NONE ctermfg=239 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#bdae88 guibg=#3b48e3 guisp=#613830 gui=bold ctermfg=144 ctermbg=52 cterm=bold
hi Normal guifg=#e0e0e0 guibg=#000000 guisp=#000000 gui=NONE ctermfg=144 ctermbg=235 cterm=NONE
hi Label guifg=#c0c0c0 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#bdae88 guibg=#492224 guisp=#492224 gui=NONE ctermfg=144 ctermbg=52 cterm=NONE
hi Search guifg=#bdae88 guibg=#3b48e3 guisp=#492224 gui=NONE ctermfg=144 ctermbg=52 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#bbaa00 guibg=NONE guisp=NONE gui=bold ctermfg=137 ctermbg=NONE cterm=bold
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi EnumerationValue -- no settings --
hi Comment guifg=#555555 guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi Character guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#00ff00 guibg=#000000 guisp=#613830 gui=bold ctermfg=144 ctermbg=52 cterm=bold
hi Number guifg=#c0a0f0 guibg=NONE guisp=NONE gui=NONE ctermfg=251 ctermbg=NONE cterm=NONE
hi Boolean guifg=#90f090 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Operator guifg=#d9d5d5 guibg=NONE guisp=NONE gui=bold ctermfg=253 ctermbg=NONE cterm=bold
hi clear CursorLine
hi CursorLineNR guifg=NONE guibg=#202020 guisp=#161616 gui=NONE ctermfg=NONE ctermbg=237 cterm=NONE
hi CursorLine guibg=#101010
"hi Union -- no settings --
hi TabLineFill guifg=#192224 guibg=#4b4b4b guisp=#4b4b4b gui=bold ctermfg=235 ctermbg=239 cterm=bold
"hi Question -- no settings --
hi WarningMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#241919 guisp=#241919 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#dedede guibg=#192224 guisp=#192224 gui=bold ctermfg=253 ctermbg=235 cterm=bold
hi CursorColumn guifg=NONE guibg=#282828 guisp=#282828 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#dd22dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Function guifg=#ff8000 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
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
hi Type guifg=#7060b0 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi DiffChange guifg=NONE guibg=#D11BD1 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Cursor guifg=#000000 guibg=#b5b5b5 guisp=#b5b5b5 gui=NONE ctermfg=254 ctermbg=131 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi PMenu guifg=#bdae88 guibg=#262626 guisp=#262626 gui=NONE ctermfg=144 ctermbg=235 cterm=NONE
hi SpecialKey guifg=#343434 guibg=NONE guisp=NONE gui=bold ctermfg=66 ctermbg=NONE cterm=bold
hi Constant guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#2090ff guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi String guifg=#50d050 guibg=NONE guisp=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#e6e6e6 guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=254 ctermbg=248 cterm=NONE
hi MatchParen guifg=#ffffff guibg=#3b48e3 guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi LocalVariable guifg=#f0ddfa guibg=NONE guisp=NONE gui=bold ctermfg=209 ctermbg=NONE cterm=bold
hi Repeat guifg=#6070ff guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi CTagsClass -- no settings --
hi Directory guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Structure guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi Macro guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLine guifg=#192224 guibg=#969693 guisp=#969693 gui=bold ctermfg=235 ctermbg=246 cterm=bold
hi cursorim guifg=NONE guibg=#b5b5b5 guisp=#b5b5b5 gui=NONE ctermfg=235 ctermbg=52 cterm=NONE
hi colorcolumn guifg=NONE guibg=#3a3c3e guisp=#3a3c3e gui=NONE ctermfg=NONE ctermbg=237 cterm=NONE
"hi clear -- no settings --

hi htmlTag guifg=#6070ff
hi htmlEndTag guifg=#6070ff

hi phpMemberSelector guifg=#ffb0b0
hi phpComparison guifg=#dd22dd
hi phpParent guifg=#ff7070
hi phpFunctions guifg=#ffb0b0
hi phpVarSelector guifg=#ffb0b0

hi javaScript guifg=#c0f0ff
hi javaScriptBraces guifg=#a0a0ff
hi javaScriptNumber guifg=#c0a0f0

hi cssBraces guifg=#c0f0c0
hi cssClassName guifg=#c0f0c0
hi cssColor guifg=#c0f0c0

