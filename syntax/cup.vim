" Vim syntax file
" Language: Cup
" Maintainer: jgrajewsky
" Last Change: Sep 30, 2021

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn match cupComment "`.*$"
" NAMESPACES a<b>:c<d>:
" TYPES a<b>
syn match cupTag "#[a-zA-Z_][a-zA-Z0-9_]*" " add namespace and generic support
syn match cupLabel "\~[a-zA-Z_][a-zA-Z0-9_]*"
syn match cupInteger "[0-9][0-9_]*"
syn match cupFloat "[0-9][0-9_]*\\.[0-9][0-9_]*"
syn keyword cupBoolean true false
syn region cupCharacter start=/'/ end=/'/
syn region cupString start=/"/ end=/"/
syn match cupCurly "[{}]"
syn match cupSquare "[\[\]]"
syn match cupAngle "[<>]"
syn match cupRound "[()]"
syn match cupComma ","
syn match cupSemi ";"
syn match cupDot "\."
syn match cupLogic "[\|&!]"
syn match cupAssign "(=|\+=|-=|\*=|/=|%=)"
syn match cupComparison "(==|!=|<|>|<=|>=)"
syn match cupMemory "[@\$]"
syn match cupMath "[+\-*/%]"
syn keyword cupConditional if elif else loop while for each in match
" VAR_DEF var foo;
" MOD mod foo;
" AS cast as foo;
" TYPE_DEF comp foo ();
syn keyword cupStructure comp enum prop
" SUB_DEF foo bar ();
" VAR_DEF_TYPE foo bar;
syn keyword cupKeyword ret next jump try this type tag mod use def sub var new as has echo

hi def link cupComment Comment
hi def link cupTag PreProc
hi def link cupLabel Label
hi def link cupInteger Number
hi def link cupFloat Float
hi def link cupBoolean Boolean
hi def link cupCharacter Character
hi def link cupString String
hi def link cupCurly Delimiter
hi def link cupSquare Delimiter
hi def link cupAngle Delimiter
hi def link cupRound Delimiter
hi def link cupComma Operator
hi def link cupSemi Delimiter
hi def link cupDot Operator
hi def link cupLogic Operator
hi def link cupAssign Operator
hi def link cupComparison Operator
hi def link cupMemory Operator
hi def link cupMath Operator
hi def link cupConditional Conditional
hi def link cupStructure Structure
hi def link cupKeyword Keyword

let b:current_syntax = "cup"