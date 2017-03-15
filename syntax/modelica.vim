" Vim syntax file
" Language:	Modelica
" Credits:	Antoine Viel, <antoine.viel@yahoo.com>
" Mainteiner:	Riccardo Orizio
" Version:	2

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Case is significant
syn case match

" Modelica keywords
syn keyword modelicaStatement algorithm annotation assert
syn keyword modelicaStatement block break
syn keyword modelicaStatement class connect connector constant
syn keyword modelicaStatement der discrete
syn keyword modelicaStatement edge else elseif elsewhen encapsulated end enumeration equation extends external
syn keyword modelicaStatement final fixed flow for function
syn keyword modelicaStatement if import in initial inner input
syn keyword modelicaStatement loop
syn keyword modelicaStatement model
syn keyword modelicaStatement noEvent
syn keyword modelicaStatement outer output
syn keyword modelicaStatement package parameter partial partial pre protected public
syn keyword modelicaStatement record redeclare replaceable return
syn keyword modelicaStatement sample size smooth start
syn keyword modelicaStatement terminal then type
syn keyword modelicaStatement when while within

" Global variables
syn keyword modelicaGlobal time

" Predifined Modelica types
syn keyword modelicaType Real Integer Boolean String

" Boolean values
syn keyword modelicaBoolean true false

" Character strings
syn match  modelicaCharacter "'.'"
syn region modelicaString start=/"/  skip=/\\"/ end=/"/

" Floating numbers
syn match modelicaNumber "-\=\<\d\+\.\d\+\([Ee][+\-]\=\d\+\)\>"
syn match modelicaNumber "-\=\<\d\+\.\d\+\>"

" Integer numbers
syn match modelicaNumber "-\=\<\d\+\([Ee][+\-]\=\d\+\)\>"
syn match modelicaNumber "-\=\<\d\+\>"

" Operators
syn keyword modelicaOperator and or not
syn match   modelicaOperator "[><=:+\-*\/\^]"

" Comments
syn match modelicaComment "//.*$"
syn region modelicaComment start=/\/\*/ end=/\*\//

" Annotations
"syn region modelicabetweenpar start=/(/ end=/)/ contained contains=modelicabetweenpar 
"syn region modelicaAnnotation start=/annotation\s*(/ end=/)/ contains=modelicabetweenpar 

" Define the default highlighting.

highlight link modelicaStatement Statement
highlight link modelicaCharacter String
highlight link modelicaString    String
highlight link modelicaBoolean   String
highlight link modelicaComment   Comment
" ???
highlight link modelicaNumber    String
highlight link modelicaType      Type
highlight link modelicaOperator  Type
highlight link modelicaGlobal    Identifier
"  highlight link modelicaAnnotation Comment

let b:current_syntax = "modelica"

