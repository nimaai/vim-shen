" Vim syntax file
" Language:     Shen
" Maintainer:   Matúš Kmiť <nimaai@runbox.com>
" URL:          http://github.com/nimaai/vim-shen.git
" Description:  Syntax definition for Shen language (www.shenlanguage.org)

setlocal lisp

setlocal iskeyword+=@,$,+,-,*,/,.,>,<,=,:,!

" system functions
syntax keyword shenSyntax absvector
syntax keyword shenSyntax absvector?
syntax keyword shenSyntax address->
syntax keyword shenSyntax <-address
syntax keyword shenSyntax adjoin
syntax keyword shenSyntax and
syntax keyword shenSyntax append
syntax keyword shenSyntax arity
syntax keyword shenSyntax boolean?
syntax keyword shenSyntax bound?
syntax keyword shenSyntax cd
syntax keyword shenSyntax close
syntax keyword shenSyntax cn
syntax keyword shenSyntax concat
syntax keyword shenSyntax cons
syntax keyword shenSyntax cons?
syntax keyword shenSyntax declare
syntax keyword shenSyntax define
syntax keyword shenSyntax defmacro
syntax keyword shenSyntax defprolog
syntax keyword shenSyntax destroy
syntax keyword shenSyntax difference
syntax keyword shenSyntax do
syntax keyword shenSyntax element?
syntax keyword shenSyntax empty?
syntax keyword shenSyntax error
syntax keyword shenSyntax error-to-string
syntax keyword shenSyntax eval
syntax keyword shenSyntax eval-kl
syntax keyword shenSyntax explode
syntax keyword shenSyntax external
syntax keyword shenSyntax fix
syntax keyword shenSyntax freeze
syntax keyword shenSyntax fst
syntax keyword shenSyntax function
syntax keyword shenSyntax gensym
syntax keyword shenSyntax get-time
syntax keyword shenSyntax get
syntax keyword shenSyntax hash
syntax keyword shenSyntax head
syntax keyword shenSyntax hd
syntax keyword shenSyntax hdstr
syntax keyword shenSyntax hdv
syntax keyword shenSyntax if
syntax keyword shenSyntax implementation
syntax keyword shenSyntax include
syntax keyword shenSyntax include-all-but
syntax keyword shenSyntax inferences
syntax keyword shenSyntax input
syntax keyword shenSyntax input+
syntax keyword shenSyntax integer?
syntax keyword shenSyntax intern
syntax keyword shenSyntax intersection
syntax keyword shenSyntax it
syntax keyword shenSyntax lambda
syntax keyword shenSyntax language
syntax keyword shenSyntax length
syntax keyword shenSyntax let
syntax keyword shenSyntax limit
syntax keyword shenSyntax lineread
syntax keyword shenSyntax load
syntax keyword shenSyntax macroexpand
syntax keyword shenSyntax map
syntax keyword shenSyntax mapcan
syntax keyword shenSyntax make-string
syntax keyword shenSyntax maxinferences
syntax keyword shenSyntax nl
syntax keyword shenSyntax not
syntax keyword shenSyntax nth
syntax keyword shenSyntax number?
syntax keyword shenSyntax n->string
syntax keyword shenSyntax occurrences
syntax keyword shenSyntax occurs-check
syntax keyword shenSyntax open
syntax keyword shenSyntax or
syntax keyword shenSyntax os
syntax keyword shenSyntax output
syntax keyword shenSyntax package
syntax keyword shenSyntax package-exists?
syntax keyword shenSyntax pos
syntax keyword shenSyntax pr
syntax keyword shenSyntax preclude
syntax keyword shenSyntax preclude-all-but
syntax keyword shenSyntax print
syntax keyword shenSyntax profile
syntax keyword shenSyntax profile-results
syntax keyword shenSyntax ps
syntax keyword shenSyntax put
syntax keyword shenSyntax read
syntax keyword shenSyntax read-byte
syntax keyword shenSyntax read-file
syntax keyword shenSyntax read-file-as-bytelist
syntax keyword shenSyntax read-file-as-string
syntax keyword shenSyntax read-from-string
syntax keyword shenSyntax remove
syntax keyword shenSyntax require
syntax keyword shenSyntax reverse
syntax keyword shenSyntax simple-error
syntax keyword shenSyntax snd
syntax keyword shenSyntax specialise
syntax keyword shenSyntax spy
syntax keyword shenSyntax step
syntax keyword shenSyntax stinput
syntax keyword shenSyntax stoutput
syntax keyword shenSyntax str
syntax keyword shenSyntax string?
syntax keyword shenSyntax string->n
syntax keyword shenSyntax subst
syntax keyword shenSyntax sum
syntax keyword shenSyntax symbol?
syntax keyword shenSyntax systemf
syntax keyword shenSyntax tail
syntax keyword shenSyntax tc
syntax keyword shenSyntax tc?
syntax keyword shenSyntax thaw
syntax keyword shenSyntax time
syntax keyword shenSyntax tl
syntax keyword shenSyntax tlstr
syntax keyword shenSyntax tlv
syntax keyword shenSyntax track
syntax keyword shenSyntax trap-error
syntax keyword shenSyntax tuple?
syntax keyword shenSyntax type
syntax keyword shenSyntax undefmacro
syntax keyword shenSyntax union
syntax keyword shenSyntax unprofile
syntax keyword shenSyntax unspecialise
syntax keyword shenSyntax untrack
syntax keyword shenSyntax value
syntax keyword shenSyntax variable?
syntax keyword shenSyntax version
syntax keyword shenSyntax vector
syntax keyword shenSyntax vector?
syntax keyword shenSyntax vector->
syntax keyword shenSyntax <-vector
syntax keyword shenSyntax write-byte
syntax keyword shenSyntax write-to-file
syntax keyword shenSyntax y-or-n?
syntax keyword shenSyntax @p
syntax keyword shenSyntax @s
syntax keyword shenSyntax @v
syntax keyword shenSyntax $
syntax keyword shenSyntax +
syntax keyword shenSyntax -
syntax keyword shenSyntax *
syntax keyword shenSyntax /
syntax keyword shenSyntax /.
syntax keyword shenSyntax >
syntax keyword shenSyntax <
syntax keyword shenSyntax =
syntax keyword shenSyntax ==
syntax keyword shenSyntax >=
syntax keyword shenSyntax <=

" Shen-YACC
syntax keyword shenYACCSyntax defcc
syntax keyword shenYACCSyntax compile
syntax match shenYACCNonTerminal "<!>"
syntax match shenYACCNonTerminal "<e>"
syntax match shenYACCNonTerminal "<end>"
syntax match shenYACCNonTerminal "<\k\+>"

" Shen special characters
syntax match shenSpecial "|"
syntax keyword shenSpecial <-
syntax keyword shenSpecial :=
syntax match shenSpecial ";"
syntax keyword shenSpecial ->
syntax keyword shenSpecial where

" square brackets
syntax match shenSquareBracket "]"
syntax match shenSquareBracket "\["

" numbers
syntax match shenNumber "\<\d\+\(\.\=\d\+\)\=\>"

" numbers
syntax match shenVariable "\<\u\l*\>"

command -nargs=+ HiLink hi def link <args>

HiLink shenSyntax Statement
HiLink shenVariable Identifier
HiLink shenSpecial Special
" HiLink shenSpecialPipe SpecialChar
" HiLink shenSpecialBacktrack SpecialChar

HiLink shenYACCSyntax Statement
HiLink shenYACCNonTerminal Constant

" HiLink shenSquareBracket Structure

delcommand HiLink

" highlight SpecialChar cterm=bold ctermfg=1
" highlight Special cterm=bold term=bold gui=bold
" highlight Statement cterm=bold term=bold gui=bold

let b:current_syntax = "shen"
