" Vim dictionary for mathmatical vocabulary
" Last Change:	12 June 2020
" Maintainer:   eichboson <github.com/eichboson>
" License:	This file is placed in the public domain.

" Don't load the plugin if wanted
if exists("g:mathlang_disable") && g:mathlang_disable == 1
    finish
endif

" Only load once per buffer
if exists("b:loaded_mathlang")
    finish
endif
let b:loaded_mathlang = 1

let s:save_cpo = &cpo
set cpo&vim

" Make sure g:mathlang_blacklist is of correct type
if !exists("g:mathlang_blacklist")
    let g:mathlang_blacklist=[]
elseif type(g:mathlang_blacklist) != 3 " Check if not list
    echoerr "g:mathlang_blacklist must be a list of strings"
    finish
endif

" Return 1 if dictionary is blacklisted and 0 if it is not
function s:blacklisted(dictionary)
    for keyword in g:mathlang_blacklist
        if a:dictionary =~ '^'.keyword
            return 1
        endif
    endfor
    return 0
endfunction

" Add not blacklisted dictionaries to the vim dictionary
let vocab_dir = expand('<sfile>:p:h:h') . '/vocabs/german'
for f in split(globpath(vocab_dir, '*'), '\n')
    if !s:blacklisted(fnamemodify(f, ':t:r'))
        exec('setlocal dictionary+=' . f)
    endif
endfor

let &cpo = s:save_cpo
unlet s:save_cpo

