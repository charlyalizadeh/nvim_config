if exists('g:loaded_nestetris') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

hi def link NESTetrisHeader      Number
hi def link NESTetrisSubHeader   Identifier

command! NESTetris lua require'nestetris'.nestetris()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_nestetrisnvim = 1
