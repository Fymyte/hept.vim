" Vim syntax file
" Langage: Heptagon
" Maintaner: Fymyte
" Last Change: May 18, 2021

if exists("b:current_syntax")
  finish
endif

" Comments
syn keyword heptTodo contained TODO FIXME NOTE XXX
syn region heptBlkComment start='(\*' end='\*)' contains=@Spell,heptTodo
syn match heptComment "--.*$" contains=@Spell,heptTodo


syn match heptUserIdent '\v[a-zA-Z][a-z0-9QA-Z_]*'
syn match heptUserFunc '\v[a-z][a-z0-9A-Z_]* *(\()@='
syn match heptParamFunc '\v[a-z][a-z0-9A-Z_]* *(\<)@='
syn match heptNumber '\v<\d+>' display
syn match heptNumber '[-+]\d\+\.\d*' display
syn match heptType   ':\s*\zs\w\+\ze' display


syn region heptBlock matchgroup=Operator start="let" end="tel" fold

syn match   heptFuncName    "\%(r#\)\=\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained
syn match   heptIdentifier  "\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained



syn keyword heptKeyword type nextgroup=heptIdentifier skipwhite skipempty
syn keyword heptKeyword fun node nextgroup=heptFuncName skipwhite skipempty
syn keyword heptKeyword open var let tel returns const fby val when whenot merge
syn keyword heptBoolean true false

let b:current_syntax = "hept"

hi def link heptFuncName    Function
hi def link heptUserFunc    Function
hi def link heptParamFunc   Function

hi def link heptIdentifier  Identifier
hi def link heptUserIdent   Identifier
hi def link heptNumber      Constant
hi def link heptKeyword     Statement
hi def link heptType        Type

hi def link heptTodo        Todo
hi def link heptBlkComment  Comment
hi def link heptComment     Comment

hi def link heptBoolean     Boolean
