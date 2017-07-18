" Vim syntax file - Delphi DFM

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn case ignore

syn region objectFold matchgroup=keyword start="^ *object " end="^ *end *$" transparent fold
syn region inheritFold matchgroup=keyword start="^ *inherited " end="^ *end *$" transparent fold
syn region angleBracket start="<" end=">" transparent

syn region pascalString matchgroup=pascalString start="'" end="'" oneline contains=pascalStringEscape
syn match pascalStringEscape contained "''"
syn match pascalStringEscape contained "#[12][0-9]\=[0-9]\="

syn keyword pascalBoolean   true false
syn match pascalNumber  "-\=\<\d\+\>"
syn match pascalFloat   "-\=\<\d\+\.\d\+\>"
syn match pascalFloat   "-\=\<\d\+\.\d\+[eE]-\=\d\+\>"
syn match pascalHexNumber   "\$[0-9a-fA-F]\+\>"

hi def link pascalBoolean	Boolean
hi def link pascalFloat	Float
hi def link pascalNumber	Number
hi def link pascalString	String
hi def link pascalStringEscape	Special
hi def link pascalStringError	Error

let b:current_syntax = "dfm"

