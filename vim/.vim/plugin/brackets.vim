:inoremap { {}<left>
:inoremap ( ()<left>
:inoremap " ""<left>
:inoremap ' ''<left>
function ClosingBracket()
  let lastChars=getline(".")[col(".")-2:col(".")-1]
  if lastChars == "{}"
    return 1
  endif
  if lastChars == "()"
    return 1
  endif
  if lastChars == "[]"
    return 1
  endif
  if lastChars == "\"\""
    return 1
  endif
  if lastChars == "''"
    return 1
  endif
  return 0
endfunction
"inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="()" ? "<cr><esc>O<tab>" : "<cr>"
inoremap <expr> <CR> ClosingBracket() ? "<CR><esc>O<tab>" : "<CR>"
