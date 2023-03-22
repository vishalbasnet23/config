let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/js-http/bishal-nodejs-incremental-project-jan23
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +11 ~/js-http/bishal-nodejs-incremental-project-jan23/packages/users/src/config/app.ts
badd +40 ~/js-http/bishal-nodejs-incremental-project-jan23/packages/users/src/services/auth.config.services.ts
badd +7 ~/js-http/bishal-nodejs-incremental-project-jan23/packages/users/src/main.ts
badd +5 ~/js-http/bishal-nodejs-incremental-project-jan23/packages/users/src/routes/usersRoute.ts
badd +10 ~/js-http/bishal-nodejs-incremental-project-jan23/packages/users/.env.local
argglobal
%argdel
$argadd .
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
