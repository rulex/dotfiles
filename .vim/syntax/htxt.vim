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
syn keyword hWork hinjarv anvia elisa nokia

syn match hAttention /\v^!+/
syn match hSymbols /\v\|/
"syn match hSymbols /\v\+/
"syn match hSymbols /\v-/
syn match hSymbols /\v\*/
syn match hSymbols /\v\^/
syn match hSymbols /\v:/
syn match hSymbols /\v\{/
syn match hSymbols /\v\}/
syn match hSymbols /\v\[/
syn match hSymbols /\v\]/
syn match hSymbols /\v\(/
syn match hSymbols /\v\)/
syn match hSymbols /\v\</
syn match hSymbols /\v\>/
syn match hSymbols /\v\$/
syn match hSymbols /\v\€/
syn match hSymbols /\v\@/
syn match hSymbols /\v\~/
syn match hComment "#.*$" contained
syn match hPath /\v[ ~]\/[A-z0-9.~\/-]*/
syn match hDate /\v\d{4}-\d{2}-\d{2}[ T]\d{2}:\d{2}:\d{2}/ " 2017-09-19 14:03:18

syn region hIndented     start='^\s' end='\n'  contains=hSymbols,hCmd,hStringTick,hTodo,hIdentifier,hWork
syn region hStringTick   start='`'   end='`'
syn region hStringDouble start='"'   end='"'   contained
syn region hStringSingle start="'"   end="'"   contained
syn region hCmd          start=' : ' end='\n'  contains=hComment,hStringTick,hStringDouble,hStringSingle,hSymbols
syn region hLongComment  start='"""' end='"""' contains=hCmd,hComment,hStringTick,hStringSingle,hSymbols


hi link hAttention   Todo
hi link hTodo        Todo
hi link hComment     Comment
hi link hLongComment Comment

hi hCmd          ctermfg=Green
hi hStringTick   ctermfg=Magenta
hi hSymbols      ctermfg=Magenta
hi hStringDouble ctermfg=DarkGreen
hi hStringSingle ctermfg=DarkGreen
"hi hLongComment  ctermfg=DarkGreen
hi hDate         ctermfg=White
hi hIdentifier   ctermfg=Blue
hi hWork         ctermfg=Yellow
hi hPath         ctermfg=Magenta


let b:current_syntax = "htxt"
