" Vim syntax file
" Language: Cup
" Maintainer: jgrajewsky
" Last Change: Sep 17, 2021

if exists("b:current_syntax")
    finish
endif

syn keyword basicLanguageKeywords this type tag mod use def sub var new as has echo

let b:current_syntax = "cup"
