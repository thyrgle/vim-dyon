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
syntax keyword dyonKeyword mut go in any vec4 grab

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

" IO Functions
syntax keyword dyonFunction println print read_line

" String functions
syntax keyword dyonFunction str trim trim_left trim_right json_string str__color chars

" Object functions
syntax keyword dyonFunction has keys

" Link functions
syntax keyword dyonFunction is_empty head tail tip neck

" Option functions
syntax keyword dyonFunction some none unwrap

" Result functions (some overlap with Option types)
syntax keyword dyonFunction unwrap_err is_ok is_err ok err

" Thread functions
syntax keyword dyonFunction join__thread


syntax keyword dyonFunction none some unwrap ok err functions
highlight link dyonFunction Function

syntax match dyonNumber "\v^-*[0-9,\.]+$"
highlight link dyonNumber Number

syntax region dyonString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link dyonString String

" Matches // style comment
syntax region dyonComment start="//" end="$"
highlight link dyonComment Comment


let b:current_syntax = "dyon"
