" Vim syntax file
" Language: Getting Things Done
" Maintainer: Rohan Orton
" Latest Revision: 19 November 2016



" quit when a syntax file was already loaded.
if exists('b:current_syntax')
  finish
endif

" Keywords {{{

    syn keyword gtdLanguageKeywords WAITING
    syn keyword gtdLanguageKeywords DUE
    syn keyword gtdLanguageKeywords ENERGY
    syn keyword gtdLanguageKeywords STARTED
    syn keyword gtdLanguageKeywords COMPLETED
    syn keyword gtdLanguageKeywords TAKES

" }}}

" Matches {{{

    syn match gtdHeading "^\s*\# .*"
    syn match gtdProject "^\s*\[+\] .*" contains=gtdContext
    syn match gtdTodoItem "^\s*\[_\] .*" contains=gtdContext
    syn match gtdDoneItem "^\s*\[x\] .*"
    syn match gtdListItem "^\s*- .*" contains=gtdContext
    syn match gtdExecItem "^\s*#! .*"
    syn match gtdContext "\v\@\w*"


" }}}

" Regions {{{

    syn region gtdTextBlock start="\"\"\"" end="\"\"\""

" }}}

" Labels {{{

    hi def link gtdHeading Identifier
    hi def link gtdProject Constant
    hi def link gtdTodoItem Function
    hi def link gtdDoneItem Comment
    hi def link gtdListItem	PreProc
    hi def link gtdExecItem Statement
    hi def link gtdLanguageKeywords Keyword
    hi def link gtdTextBlock String
    hi def link gtdContext Underlined

" }}}

let b:current_syntax = 'gtd'


" vim:fdm=marker
