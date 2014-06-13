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

CompilerSet makeprg=mocha\ $*

CompilerSet errorformat=
            \%Enot\ ok\ %n%.%#,
            \%Z%.%#at\ \Context%.%#\ (\/var\/lamp\/code\/lamp\/%f:%l:%c),
            \%C%m,
            \%-G%.%#
