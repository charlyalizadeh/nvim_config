if exists('g:loaded_bfviz') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

hi def link BfvizHeader      Number
hi def link BfvizSubHeader   Identifier

command! Bfviz lua require'bfviz'.bfviz()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_bfviz = 1
