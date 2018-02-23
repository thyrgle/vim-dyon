if exists("b:current_syntax")
    finish
endif

" Function/Closure
syntax keyword dyonKeyword fn grab

" Boolean
syntax keyword dyonKeyword true false

" Control keywords
syntax keyword dyonKeyword break continue else if for loop return in

" Special keywords
syntax keyword dyonKeyword mut go in any vec4

highlight link dyonKeyword Keyword

" Highlight functions 
" (see: https://stackoverflow.com/a/45626295/667648)
syntax match dyonFunction "\zs\(\k\w*\)*\s*\ze(" 
highlight link dyonFunction Function

" Arithmetic operations

" a * b
syntax match dyonOperator "\v\*"
" a / b
syntax match dyonOperator "\v/"
" a % b
syntax match dyonOperator "\v\%"
" a + b
syntax match dyonOperator "\v\+"
" a - b
syntax match dyonOperator "\v-"
" a ^ b
syntax match dyonOperator "\v\^"
" a *= b
syntax match dyonOperator "\v\*\="
" a /= b
syntax match dyonOperator "\v/\="
" a %= b
syntax match dyonOperator "\v\%\="
" a += b
syntax match dyonOperator "\v\+\="
" a -= b
syntax match dyonOperator "\v-\="
" a ^= b
syntax match dyonOperator "\v\^\="
" a := b
syntax match dyonOperator "\v:\="

" Boolean operations

" a && b
syntax match dyonOperator "\v\&\&"
" a and b
syntax match dyonOperator "\v and "
" a || b
syntax match dyonOperator "\v\|\|"
" a or b
syntax match dyonOperator "\v or "

highlight link dyonOperator Operator

" Numbers and strings
" (see
" https://github.com/pangloss/vim-javascript/blob/89fcb6bfcada1c4256284723778d128342b48350/syntax/javascript.vim#L57)
syntax match dyonString "\v#[0-9a-f]+"
syntax match dyonString /\c\<\%(\d\+\%(e[+-]\=\d\+\)\=\|0b[01]\+\|0o\o\+\|0x\x\+\)\>/
syntax region dyonString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link dyonString String

highlight link dyonNumber String


" Matches // style comment
syntax region dyonComment start="//" end="$"
highlight link dyonComment Comment


let b:current_syntax = "dyon"
