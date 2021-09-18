" Vim syntax file
" Language: Cup
" Maintainer: jgrajewsky
" Last Change: Sep 18, 2021

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn keyword cupKeyword this type tag mod use def sub var new as has echo

hi def link cupKeyword Keyword

let b:current_syntax = "cup"