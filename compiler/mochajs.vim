" Vim compiler file
" Compiler:     Mocha JS
" Maintainer:   Thomas Payne <tom@tompayne.eu>
" URL:          https://github.com/tapayne88/vim-mochajs
" Last Change:  14/06/2014

if exists("current_compiler")
  finish
endif
let current_compiler = "mochajs"

if exists(":CompilerSet") != 2  " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=mocha
CompilerSet errorformat=
            \%Enot\ ok\ %n%.%#,
            \%Z\ %#at\ Context%.%#\ (%f:%l:%c),
            \%Z\ %#at\ null%.%#\ (%f:%l:%c),
            \%C\ %#%m,
            \%-G1%.%#,
            \%-G\ %#at%.%#,
            \%-Gok%.%#,
            \%-G#%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
