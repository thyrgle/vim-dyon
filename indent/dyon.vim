if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

if exists("*DyonIndent")
  finish
endif

" Dyon works similar to C, but without ;.
setlocal smartindent
