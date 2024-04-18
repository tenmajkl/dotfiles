if exists('b:current_syntax')
    finish
endif

syn keyword czKeywords tiskni hlavní #zahrň vykonávej dokud pro pokud jinak vrať statický statické přepínač případ konstanta
syn keyword czTypes celé_číslo desetinné_číslo dvojitý znak prázdno

syn match czNumber '\d\+' display
syn match czNumber '[-+=]\d\+' display

syn match czNumber '\d\+\.\d*' display
syn match czNumber '[-+=]\d\+\.\d*' display

syn region czString start='"' end='"'
syn region czString start='\'' end='\''

let b:current_syntax='cz_lang'

hi def link czKeywords Statement
hi def link czTypes Type
hi def link czNumber Number
hi def link czString String
