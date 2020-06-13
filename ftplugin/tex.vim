" Vim dictionary for mathmatical vocabulary
" Last Change:	12 June 2020
" Maintainer:   eichboson <github.com/eichboson>
" License:	This file is placed in the public domain.

if exists("b:loaded_mathlang")
  finish
endif
let b:loaded_mathlang = 1

let s:save_cpo = &cpo
set cpo&vim

let vocab_dir = expand('<sfile>:p:h:h') . '/vocabs'
for f in split(globpath(vocab_dir, '*'), '\n')
    exec('setlocal dictionary+=' . f)
endfor

let &cpo = s:save_cpo
unlet s:save_cpo

