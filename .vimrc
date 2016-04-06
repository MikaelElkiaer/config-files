set number
set nohlsearch
nmap <A-Down> :m +1<CR>
nmap <A-Up> :m -2<CR>
nmap <F4> :s/^./\=submatch(0)=="#"?"":"#".submatch(0)/<CR>
nmap <F3> :s/^\([+-]\)\(.*[\r\n]\)/\=submatch(1)=="+"?"":" ".submatch(2)/<CR>
"handle rebase commit line

