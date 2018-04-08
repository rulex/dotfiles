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
syn match hComment "#.*$" contained
syn match hPath /\v[ ~]\/[A-z0-9.~\/-]*/
syn match hDate /\v\d{4}-\d{2}-\d{2}[ T]\d{2}:\d{2}:\d{2}/ " 2017-09-19 14:03:18
syn match hCmdArg /\v\-/ contained
syn match hCmdArgVar /\v [\-]+[\-A-z]+ / contained

"syn match hList /\v[\*\-·]/ contained

syn region hStringTick   start='`'     skip='\\`'    end='`'
syn region hStringDouble start='"'     skip='\\"'    end='["\n]'
syn region hStringSingle start="'"     skip="\\'"    end="['\n]"
syn region hCmd          start=' : '   end='\n'      contains=hComment,hStringTick,hStringDouble,hStringSingle,hSymbols,hCmdArg,hCmdArgVar
syn region hLongComment  start='"""'   end='"""'     contains=hCmd,hStringTick,hStringSingle,hSymbols
syn region hParentes     start='('     skip='\\)'    end='[\)\n]'
syn region hBracketsSq   start='\['    skip='\\]'    end='[\]\n]'
syn region hBracketsCur  start='{'     skip='\\}'    end='[}\n]'
syn region hBracketsLes  start='<'     skip='\\>'    end='[>\n]'
syn region hIndented     start='^\s'   end='\n'      contains=hSymbols,hCmd,hStringTick,hTodo,hIdentifier,hWork,hParentes,hBracketsSq,hBracketsLes,hBracketsCur,hStringTick,hStringSingle,hStringDouble,hPath,hList
syn region hList         start='\s\*'  end='\n'      contained    contains=hSymbols,hCmd,hStringTick,hTodo,hIdentifier,hWork,hStringTick,hStringSingle,hStringDouble,hPath
syn region hList         start='\s\-'  end='\n'      contained    contains=hSymbols,hCmd,hStringTick,hTodo,hIdentifier,hWork,hStringTick,hStringSingle,hStringDouble,hPath
syn region hList         start='\s·'   end='\n'      contained    contains=hSymbols,hCmd,hStringTick,hTodo,hIdentifier,hWork,hStringTick,hStringSingle,hStringDouble,hPath
syn region hList         start='\s='   end='\n'      contained    contains=hSymbols,hCmd,hStringTick,hTodo,hIdentifier,hWork,hStringTick,hStringSingle,hStringDouble,hPath

hi link hAttention   Todo
hi link hTodo        Todo
hi link hComment     Comment
hi link hLongComment Comment

" TODO hi link
"hi link hCmd          Constant
hi hCmd          ctermfg=DarkGreen guifg=#10ff10
hi link hPath         Directory
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


let b:current_syntax = "htxt"
