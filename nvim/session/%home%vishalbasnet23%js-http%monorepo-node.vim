let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/js-http/monorepo-node
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +27 packages/users/src/main.ts
badd +5 packages/users/src/auth/middleware/auth.middleware.ts
badd +14 packages/users/src/services/users.services.ts
badd +7 packages/users/src/daos/users.dao.ts
badd +2 packages/users/src/models/user.model.ts
badd +22 packages/users/src/controllers/users.controller.ts
badd +20 packages/users/src/auth/services/auth.service.ts
badd +2 packages/users/src/dto/create.user.dto.ts
badd +19 packages/users/src/schemas/user.schema.ts
argglobal
%argdel
$argadd .
edit packages/users/src/auth/services/auth.service.ts
argglobal
balt packages/users/src/dto/create.user.dto.ts
let s:l = 20 - ((19 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 022|
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
