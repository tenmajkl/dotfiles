" Vim syntax file
" Language: Juice
" Maintainer: TENMAJKL
" Filenames: *.juice

if exists('b:current_syntax')
    finish
endif

runtime! syntax/html.vim

syn region juiceString start="'" end="'" contained
syn region juiceString start="\"" end="\"" contained

syn match juiceNumber "\d\+" contained

syn match juiceVariable "\$[a-z0-9A-Z_]\+" contained

syn keyword juiceKeyword as if elseif foreach for while switch case unless block yield extends contained

syn match juiceEnd "/\w\+" contained
syn match juiceEnd "end\w\+" contained

syn match juicePipe "|>" contained

syn region juiceDirective matchgroup=juiceDeliminer start="{" contains=juiceString,juiceNumber,juiceKeyword,juiceEnd,juiceVariable end="}"
syn region juiceEcho matchgroup=juiceDeliminer start="{{" contains=juiceVariable,juiceString,juiceNumber,juicePipe end="}}"
syn region juiceUnsafe matchgroup=juiceDeliminer start="{!" contains=juiceVariable,juiceString,juiceNumber,juicePipe end="!}"
syn region juiceComment matchgroup=juiceComment start="{#" end="#}"

hi def link juiceDeliminer Tag
hi def link juiceComment Comment
hi def link juiceString String
hi def link juiceNumber Number
hi def link juiceVariable Identifier
hi def link juiceKeyword Statement
hi def link juiceEnd Statement
hi def link juicePipe Tag

let b:current_syntax='juice'
