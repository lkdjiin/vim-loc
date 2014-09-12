if exists('g:loaded_vimloc') || &cp || v:version < 700
  finish
endif
let g:loaded_vimloc = 1

command! Loc call vimloc#loc()

