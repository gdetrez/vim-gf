" Vim syntax file
" Language: Grammatical Framework
" Maintainer: Grégoire Détrez
" Latest Revision: 20 May 2013

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword gfStructural abstract concrete resource interface instance
syn keyword gfStructural incomplete of with open
syn keyword gfStructural cat fun lincat lin oper flags
syn match   gfStructural "\*\*\|-"
syn keyword gfConditional case table overload

" language
syn match   gfFunction  "[[:alpha:]][[:alnum:]_]*"
syn match   gfDelimiter "(\|)\|\[\|\]\|,\|;\|_\|{\|}"
syn match   gfSymbols   ":\|->\|\\\|\\\\\|=>"
syn match   gfOperators "++\|+"

" Comments
syn keyword gfTodo contained TODO FIXME XXX NOTE
syn match   gfComment "--.*$" contains=celTodo
syn region  gfComment start="{-" end="-}"
" Strings
syn region  gfString start='"' end='"'

let b:current_syntax = "gf"

hi def link gfTodo          Todo
hi def link gfComment       Comment
hi def link gfString        String
hi def link gfConditional   Conditional
hi def link gfStructural    Structure
hi def link gfFunction      Function
hi def link gfSpecialChar   SpecialChar
hi def link gfDelimiter     Delimiter
hi def link gfSymbols       Operator
hi def link gfOperators     Operator

