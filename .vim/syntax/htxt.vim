" Vim syntax file
" Language: h.txt
" Maintainer: rulex
" Latest Revision: 2017-09-20 12:19:39

if exists("b:current_syntax")
    finish
endif


syntax clear
syntax case match


syn keyword hTodo TODO FIXME XXX NOTE
syn keyword hIdentifier done
"syn keyword hWork hinjarv anvia elisa nokia

syn match hWork /\chinjarv\|anvia\|elisa\|nokia/
syn match hAttention /\v^!+/
syn match hSymbols /\v\|/
"syn match hSymbols /\v\+/
"syn match hSymbols /\v-/
"syn match hSymbols /\v\*/
syn match hSymbols /\v·/
syn match hSymbols /\v-/
syn match hSymbols /\v\^/
syn match hSymbols /\v#/
syn match hSymbols /\v#[A-z0-9]+/
syn match hSymbols /\v:/
syn match hSymbols /\v;/
syn match hSymbols /\v\{/
syn match hSymbols /\v\}/
syn match hSymbols /\v\=/
syn match hSymbols /\v\[/
syn match hSymbols /\v\]/
syn match hSymbols /\v\(/
syn match hSymbols /\v\)/
syn match hSymbols /\v\</
syn match hSymbols /\v\>/
syn match hSymbols /\v\$/
syn match hSymbols /\v\€/
syn match hSymbols /\v\@/
syn match hSymbols /\v\@[A-z0-9]+/
syn match hSymbols /\v\~/
syn match hComment " #.*$"      contained  extend
syn match hPath /\v[ ~]\/[A-z0-9.~\/-]*/
syn match hDate /\v\d{4}-\d{2}-\d{2}[ T]\d{2}:\d{2}:\d{2}/ " 2017-09-19 14:03:18
syn match hUnderline /_[A-z0-9\ ]+_/
"syn match hCmdArg /\v\-/ contained
"syn match hCmdArgVar /\v [\-]+[\-A-z]+ / contained
"syn match hList /\v[\*\-·]/ contained
syntax match Hyperlink `\v<(((https?|ftp|gopher|telnet)://|(mailto|file|news|about|ed2k|irc|sip|magnet):)[^' \t<>"]+|(www|web|w3)[a-z0-9_-]*\.[a-z0-9._-]+\.[^' \t<>"]+)[a-z0-9/]`

syn region hStringTick   start=+`+    skip='\\`'    end=+`+               keepend
syn region hStringDouble start=+"+    skip=+\\"|+   end=+"\|$\|\n+        keepend
syn region hStringSingle start=+ '+   skip=+\\'+    end=+' \|$\|\n+       keepend
"syn region hLongComment  start=+ #+                 end=+ #+              extend    contained
syn region hLongComment  start=+ """+ skip=+\\"+    end=+ """+            keepend   contains=hCmd,hStringTick,hStringSingle,hSymbols
syn region hCmd          start=' : \|cmd: '                end='$\|#\|\n'        keepend   contains=hComment,hStringTick,hStringDouble,hStringSingle,hSymbols
syn region hStar         start=' \*'                end='\*\|\n'
"syn region hUnderline   start=' _'                 end='_ \|\n'
syn region hParentes     start='('     skip='\\)'   end='[\)\n]'
syn region hBracketsSq   start='\['    skip='\\]'   end='[\]\n]'
syn region hBracketsCur  start='{'     skip='\\}'   end='[}\n]'
syn region hBracketsLes  start='<'     skip='\\>'   end='[>\n]'
"syn region hIndented     start='^\s'   end='\n'      contains=hSymbols,hCmd,hStringTick,hTodo,hIdentifier,hWork,hParentes,hBracketsSq,hBracketsLes,hBracketsCur,hStringTick,hStringSingle,hStringDouble,hPath,hList,hLongComment
"syn region hList         start='^\s*\*'             end=':\|\n'
"syn region hList         start='^\s*\-'             end=':\|\n'
"syn region hList         start='^\s*·'              end=':\|\n'


hi Hyperlink     ctermfg=DarkGreen guifg=#999999      gui=NONE
"hi link hCmd          Constant
hi hCmd          ctermfg=DarkGreen guifg=#10ff10
hi hParentes     ctermfg=Yellow    guifg=#ff6565
hi hBracketsSq   ctermfg=Yellow    guifg=#dd9015
hi hBracketsCur  ctermfg=Yellow    guifg=#40a080
hi hBracketsLes  ctermfg=Yellow    guifg=#8080d0
hi hCmdArg       ctermfg=Yellow    guifg=Yellow
hi hCmdArgVar    ctermfg=White     guifg=White        guibg=NONE
hi hStringTick   ctermfg=Magenta   guifg=#d170d1
hi hSymbols      ctermfg=Magenta   guifg=#d170d1
hi hStringDouble ctermfg=DarkGreen guifg=#17B217
hi hStringSingle ctermfg=DarkGreen guifg=#30f030
hi hDate         ctermfg=White     guifg=White
hi hIdentifier   ctermfg=Blue      guifg=DarkCyan
hi hWork         ctermfg=Yellow    guifg=Yellow
hi hList         ctermfg=NONE      guifg=DarkCyan    gui=bold
hi hUnderline    ctermfg=NONE      guifg=NONE        gui=underline


hi link hAttention   Todo
hi link hTodo        Todo
hi link hComment     Comment
hi link hLongComment Comment
hi link hPath        Directory
hi link hStar        hWork

let b:current_syntax = "htxt"
