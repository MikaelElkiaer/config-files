set 	number
set 	nohlsearch
syntax on

command	Md 	:m +1
command Mu 	:m -2
command C 	:s/^./\=submatch(0)=="#"?"":"#".submatch(0)/
command A 	:s/^\([+-]\)\(.*[\r\n]\)/\=submatch(1)=="+"?"":" ".submatch(2)/

function RebaseAction(a)
  if a:a == "p"
    let action = "pick"
  elseif a:a == "r"
    let action = "reword"
  elseif a:a == "e"
    let action = "edit"
  elseif a:a == "s"
    let action = "squash"
  elseif a:a == "f"
    let action = "fixup"
  elseif a:a == "x"
    let action = "execute"
  else
    echom "You must select one of the actions: p (pick), r (reword), e (edit), s (squash), f (fixup), x (execute)."
    return
  endif

  :s/^\([presfx]\|pick\|reword\|edit\|squash\|fixup\|execute\)\(\s.*\)/\=action . submatch(2)/
  return
   

  echom "Action: " . action
endfunction

command -nargs=1 R call RebaseAction(<f-args>)

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
