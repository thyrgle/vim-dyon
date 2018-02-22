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

syntax match dyonNumber "\v^-*[0-9,\.]+$"
highlight link dyonNumber Number

syntax region dyonString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link dyonString String

" Matches // style comment
syntax region dyonComment start="//" end="$"
highlight link dyonComment Comment


let b:current_syntax = "dyon"
