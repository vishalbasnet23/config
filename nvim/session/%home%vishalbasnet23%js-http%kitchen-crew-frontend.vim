let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/js-http/kitchen-crew-frontend
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +53 ~/js-http/kitchen-crew-frontend/pages/cart/index.js
badd +215 components/cart/index.js
badd +43 ~/js-http/kitchen-crew-frontend/components/shared/loginModal.js
badd +10 ~/js-http/kitchen-crew-frontend/components/elements/buttons/loadingButton.js
badd +1 ~/js-http/kitchen-crew-frontend/components/category/index.js
badd +21 pages/user/order/\[orderId].js
badd +1 ~/js-http/kitchen-crew-frontend/context/CategoryContext.js
argglobal
%argdel
$argadd ./
edit ~/js-http/kitchen-crew-frontend/context/CategoryContext.js
argglobal
balt pages/user/order/\[orderId].js
let s:l = 12 - ((11 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 032|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
