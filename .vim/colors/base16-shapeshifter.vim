" Base16 shapeshifter (https://github.com/chriskempson/base16)
" Scheme: Tyler Benziger (http://tybenz.com)

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
"   let g:base16_shell_path=base16-builder/output/shell/
if !has('gui_running')
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-shapeshifter.".&background.".sh"
  endif
endif

" GUI color definitions
let s:gui00 = "000000" " black
let s:gui01 = "060606" " black
let s:gui02 = "102015" " gray
let s:gui03 = "343434" " gray
let s:gui04 = "555555" " gray
let s:gui05 = "ababab" " gray
let s:gui06 = "e0e0e0" " gray
let s:gui07 = "f9f9f9" " gray
let s:red = "e92f2f" " red
let s:orange = "e09448" " orange?
let s:yellow = "dddd13" " yellow
let s:green = "17B217" " green
let s:cyan = "23edda" " cyan
let s:magenta = "3b48e3" " blue magenta?
let s:pink = "f996e2" " pink
let s:brown = "69542d" " brown

" Terminal color definitions
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "10"
  let s:cterm02 = "11"
  let s:cterm04 = "12"
  let s:cterm06 = "13"
  let s:cterm09 = "09"
  let s:cterm0F = "14"
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-shapeshifter"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
	if a:guifg != ""
		exec "hi " . a:group . " guifg=#" . s:gui(a:guifg)
	endif
	if a:guibg != ""
		exec "hi " . a:group . " guibg=#" . s:gui(a:guibg)
	endif
	if a:ctermfg != ""
		exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
	endif
	if a:ctermbg != ""
		exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
	endif
	if a:attr != ""
		exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
	endif
endfun

" Return GUI color for light/dark variants
fun s:gui(color)
	if &background == "dark"
		return a:color
	endif
	if a:color == s:gui00
		return s:gui07
	elseif a:color == s:gui01
		return s:gui06
	elseif a:color == s:gui02
		return s:gui05
	elseif a:color == s:gui03
		return s:gui04
	elseif a:color == s:gui04
		return s:gui03
	elseif a:color == s:gui05
		return s:gui02
	elseif a:color == s:gui06
		return s:gui01
	elseif a:color == s:gui07
		return s:gui00
	endif
	return a:color
endfun

" Return terminal color for light/dark variants
fun s:cterm(color)
	if &background == "dark"
		return a:color
	endif
	if a:color == s:cterm00
		return s:cterm07
	elseif a:color == s:cterm01
		return s:cterm06
	elseif a:color == s:cterm02
		return s:cterm05
	elseif a:color == s:cterm03
		return s:cterm04
	elseif a:color == s:cterm04
		return s:cterm03
	elseif a:color == s:cterm05
		return s:cterm02
	elseif a:color == s:cterm06
		return s:cterm01
	elseif a:color == s:cterm07
		return s:cterm00
	endif
	return a:color
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:red, "", s:cterm08, "", "")
call <sid>hi("Directory",     s:magenta, "", s:cterm0D, "", "")
call <sid>hi("ErrorMsg",      s:red, s:gui00, s:cterm08, s:cterm00, "")
call <sid>hi("Exception",     s:red, "", s:cterm08, "", "")
call <sid>hi("FoldColumn",    "", s:gui00, "", s:cterm01, "")
call <sid>hi("Folded",        s:red, s:gui00, s:cterm03, s:cterm01, "bold")
call <sid>hi("IncSearch",     s:gui01, s:orange, s:cterm01, s:cterm09, "none")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:red, "", s:cterm08, "", "")
call <sid>hi("MatchParen",    s:gui00, s:magenta, s:cterm00, s:cterm03, "")
call <sid>hi("ModeMsg",       s:green, "", s:cterm0B, "", "")
call <sid>hi("MoreMsg",       s:green, "", s:cterm0B, "", "")
call <sid>hi("Question",      s:magenta, "", s:cterm0D, "", "")
call <sid>hi("Search",        s:gui06, s:magenta, s:cterm03, s:cterm0A, "")
call <sid>hi("TooLong",       s:red, "", s:cterm08, "", "")
call <sid>hi("Underlined",    s:red, "", s:cterm08, "", "")
call <sid>hi("Visual",        "", s:gui02, "", s:cterm02, "")
call <sid>hi("VisualNOS",     s:red, "", s:cterm08, "", "")
call <sid>hi("WarningMsg",    s:red, "", s:cterm08, "", "")
call <sid>hi("WildMenu",      s:red, "", s:cterm08, "", "")
call <sid>hi("Title",         s:magenta, "", s:cterm0D, "", "none")
call <sid>hi("Conceal",       s:magenta, s:gui00, s:cterm0D, s:cterm00, "")
"call <sid>hi("Cursor",        "", "", "", "", "")
call <sid>hi("Cursor",        "none", "none", "", "", "")
call <sid>hi("lCursor",       "none", "none", "", "", "")
call <sid>hi("NonText",       s:gui03, "", s:cterm03, "", "")
call <sid>hi("Normal",        s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("LineNr",        s:gui04, s:gui01, s:cterm03, s:cterm01, "")
call <sid>hi("SignColumn",    s:gui03, s:gui01, s:cterm03, s:cterm01, "")
call <sid>hi("SpecialKey",    s:gui03, "", s:cterm03, "", "")
call <sid>hi("StatusLine",    s:gui06, s:magenta, s:cterm04, s:cterm02, "none")
call <sid>hi("StatusLineNC",  s:gui05, s:gui02, s:cterm03, s:cterm01, "none")
call <sid>hi("VertSplit",     s:gui02, s:gui02, s:cterm02, s:cterm02, "none")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:cterm01, "none")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:cterm01, "none")
"call <sid>hi("CursorLine",    "", s:gui01, "", s:cterm00, "")
"call <sid>hi("CursorLine",    "none", "none", "none", "none", "")
call <sid>hi("CursorLineNr",  s:gui05, s:gui01, s:cterm03, s:cterm01, "underline")
call <sid>hi("PMenu",         s:gui01, s:gui04, s:cterm04, s:cterm01, "none")
call <sid>hi("PMenuSel",      s:gui01, s:gui06, s:cterm01, s:cterm04, "")
call <sid>hi("PMenuSbar",     s:gui01, s:gui03, s:cterm01, s:cterm04, "")
call <sid>hi("PMenuThumb",    s:gui01, s:gui05, s:cterm01, s:cterm04, "")
call <sid>hi("TabLine",       s:gui05, s:gui03, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineFill",   s:gui05, s:gui03, s:cterm03, s:cterm01, "none")
call <sid>hi("TabLineSel",    s:green, s:gui01, s:cterm0B, s:cterm01, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:orange, "", s:cterm09, "", "")
call <sid>hi("Character",    s:red, "", s:cterm08, "", "")
call <sid>hi("Comment",      s:gui04, "", s:cterm03, "", "")
call <sid>hi("Conditional",  s:pink, "", s:cterm0E, "", "")
call <sid>hi("Constant",     s:orange, "", s:cterm09, "", "")
call <sid>hi("Define",       s:pink, "", s:cterm0E, "", "none")
call <sid>hi("Delimiter",    s:brown, "", s:cterm0F, "", "")
call <sid>hi("Float",        s:orange, "", s:cterm09, "", "")
call <sid>hi("Function",     s:magenta, "", s:cterm0D, "", "")
call <sid>hi("Identifier",   s:red, "", s:cterm08, "", "none")
call <sid>hi("Include",      s:magenta, "", s:cterm0D, "", "")
call <sid>hi("Keyword",      s:pink, "", s:cterm0E, "", "")
call <sid>hi("Label",        s:yellow, "", s:cterm0A, "", "")
call <sid>hi("Number",       s:orange, "", s:cterm09, "", "")
call <sid>hi("Operator",     s:gui05, "", s:cterm05, "", "none")
call <sid>hi("PreProc",      s:yellow, "", s:cterm0A, "", "")
call <sid>hi("Repeat",       s:yellow, "", s:cterm0A, "", "")
call <sid>hi("Special",      s:cyan, "", s:cterm0C, "", "")
call <sid>hi("SpecialChar",  s:brown, "", s:cterm0F, "", "")
call <sid>hi("Statement",    s:magenta, "", s:cterm08, "", "")
call <sid>hi("StorageClass", s:yellow, "", s:cterm0A, "", "")
call <sid>hi("String",       s:green, "", s:cterm0B, "", "")
call <sid>hi("Structure",    s:pink, "", s:cterm0E, "", "")
call <sid>hi("Tag",          s:yellow, "", s:cterm0A, "", "")
call <sid>hi("Todo",         s:yellow, s:gui01, s:cterm0A, s:cterm01, "")
call <sid>hi("Type",         s:yellow, "", s:cterm0A, "", "none")
call <sid>hi("Typedef",      s:yellow, "", s:cterm0A, "", "")

" C highlighting
call <sid>hi("cOperator",   s:cyan, "", s:cterm0C, "", "")
call <sid>hi("cPreCondit",  s:pink, "", s:cterm0E, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui05, "", s:cterm05, "", "")
call <sid>hi("cssClassName",   s:pink, "", s:cterm0E, "", "")
call <sid>hi("cssColor",       s:cyan, "", s:cterm0C, "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:green, s:gui01,  s:cterm0B, s:cterm01, "")
call <sid>hi("DiffChange",   s:gui03, s:gui01,  s:cterm03, s:cterm01, "")
call <sid>hi("DiffDelete",   s:red, s:gui01,  s:cterm08, s:cterm01, "")
call <sid>hi("DiffText",     s:magenta, s:gui01,  s:cterm0D, s:cterm01, "")
call <sid>hi("DiffAdded",    s:green, s:gui00,  s:cterm0B, s:cterm00, "")
call <sid>hi("DiffFile",     s:red, s:gui00,  s:cterm08, s:cterm00, "")
call <sid>hi("DiffNewFile",  s:green, s:gui00,  s:cterm0B, s:cterm00, "")
call <sid>hi("DiffLine",     s:magenta, s:gui00,  s:cterm0D, s:cterm00, "")
call <sid>hi("DiffRemoved",  s:red, s:gui00,  s:cterm08, s:cterm00, "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:red, "", s:cterm08, "", "")
call <sid>hi("gitCommitSummary",   s:green, "", s:cterm0B, "", "")
  
" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:green, s:gui01, s:cterm0B, s:cterm01, "")
call <sid>hi("GitGutterChange",  s:magenta, s:gui01, s:cterm0D, s:cterm01, "")
call <sid>hi("GitGutterDelete",  s:red, s:gui01, s:cterm08, s:cterm01, "")
call <sid>hi("GitGutterChangeDelete",  s:pink, s:gui01, s:cterm0E, s:cterm01, "")

" HTML highlighting
call <sid>hi("htmlBold",    s:yellow, "", s:cterm0A, "", "")
call <sid>hi("htmlItalic",  s:pink, "", s:cterm0E, "", "")
call <sid>hi("htmlEndTag",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("htmlTag",     s:gui05, "", s:cterm05, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui05, "", s:cterm05, "", "")
call <sid>hi("javaScriptBraces",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("javaScriptNumber",  s:orange, "", s:cterm09, "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:green, "", s:cterm0B, "", "")
call <sid>hi("markdownError",             s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("markdownCodeBlock",         s:green, "", s:cterm0B, "", "")
call <sid>hi("markdownHeadingDelimiter",  s:magenta, "", s:cterm0D, "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:magenta, "", s:cterm0D, "", "")
call <sid>hi("NERDTreeExecFile",  s:gui05, "", s:cterm05, "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui05, "", s:cterm05, "", "")
call <sid>hi("phpComparison",      s:gui05, "", s:cterm05, "", "")
call <sid>hi("phpParent",          s:gui05, "", s:cterm05, "", "")

" Python highlighting
call <sid>hi("pythonOperator",  s:pink, "", s:cterm0E, "", "")
call <sid>hi("pythonRepeat",    s:pink, "", s:cterm0E, "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:magenta, "", s:cterm0D, "", "")
call <sid>hi("rubyConstant",                s:yellow, "", s:cterm0A, "", "")
call <sid>hi("rubyInterpolation",           s:green, "", s:cterm0B, "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:brown, "", s:cterm0F, "", "")
call <sid>hi("rubyRegexp",                  s:cyan, "", s:cterm0C, "", "")
call <sid>hi("rubySymbol",                  s:green, "", s:cterm0B, "", "")
call <sid>hi("rubyStringDelimiter",         s:green, "", s:cterm0B, "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:red, "", s:cterm08, "", "")
call <sid>hi("sassClassChar",  s:orange, "", s:cterm09, "", "")
call <sid>hi("sassInclude",    s:pink, "", s:cterm0E, "", "")
call <sid>hi("sassMixing",     s:pink, "", s:cterm0E, "", "")
call <sid>hi("sassMixinName",  s:magenta, "", s:cterm0D, "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:green, s:gui01, s:cterm0B, s:cterm01, "")
call <sid>hi("SignifySignChange",  s:magenta, s:gui01, s:cterm0D, s:cterm01, "")
call <sid>hi("SignifySignDelete",  s:red, s:gui01, s:cterm08, s:cterm01, "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellLocal",   "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellCap",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellRare",    "", s:gui00, "", s:cterm00, "undercurl")

" Remove functions
delf <sid>hi
delf <sid>gui
delf <sid>cterm

hi clear CursorLine
hi CursorLine guibg=#151515

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:red  s:orange s:yellow  s:green  s:cyan  s:magenta  s:pink  s:brown
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
