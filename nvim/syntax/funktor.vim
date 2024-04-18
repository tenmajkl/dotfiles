" Sytnax file for funktor

if exists('b:current_syntax')
    finish
endif

syn match fnFunction "[\}]\+\{"hs=s-1
syn keyword fnTODO todo TODO 

syn match fnNumber '\d\+' display
syn region fnString start='\'' end='\'' display
syn region fnComment start='--' end='\n' display 

let b:current_syntax='funktor'

hi def link fnFunction Statement
hi def link fnString String
hi def link fnNumber Number
hi def link fnComment Comment
hi def link fnTODO Todo
