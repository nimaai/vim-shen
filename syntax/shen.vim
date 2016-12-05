" Vim syntax file
" Language:     Shen
" Maintainer:   Matúš Kmiť <nimaai@runbox.com>
" URL:          http://github.com/nimaai/vim-shen.git
" Description:  Syntax definition for Shen language (www.shenlanguage.org)

setlocal lisp

setlocal iskeyword+=@,$,+,-,*,/,.,>,<,=,:,;

" system functions
syntax keyword shenSyntax absvector
syntax keyword shenFunc absvector?
syntax keyword shenSyntax address->
syntax keyword shenSyntax <-address
syntax keyword shenFunc adjoin
syntax keyword shenFunc and
syntax keyword shenFunc append
syntax keyword shenFunc arity
syntax keyword shenFunc boolean?
syntax keyword shenFunc bound?
syntax keyword shenFunc cd
syntax keyword shenFunc close
syntax keyword shenFunc cn
syntax keyword shenSyntax concat
syntax keyword shenSyntax cons
syntax keyword shenFunc cons?
syntax keyword shenSyntax declare
syntax keyword shenSyntax define
syntax keyword shenSyntax defmacro
syntax keyword shenSyntax defprolog
syntax keyword shenFunc destroy
syntax keyword shenFunc difference
syntax keyword shenFunc do
syntax keyword shenFunc element?
syntax keyword shenFunc empty?
syntax keyword shenSyntax error
syntax keyword shenFunc error-to-string
syntax keyword shenSyntax eval
syntax keyword shenSyntax eval-kl
syntax keyword shenFunc explode
syntax keyword shenFunc external
syntax keyword shenFunc fix
syntax keyword shenFunc freeze
syntax keyword shenFunc fst
syntax keyword shenFunc function
syntax keyword shenFunc gensym
syntax keyword shenFunc get-time
syntax keyword shenSyntax get
syntax keyword shenFunc hash
syntax keyword shenFunc head
syntax keyword shenFunc hd
syntax keyword shenFunc hdstr
syntax keyword shenFunc hdv
syntax keyword shenFunc if
syntax keyword shenFunc implementation
syntax keyword shenFunc include
syntax keyword shenFunc include-all-but
syntax keyword shenFunc inferences
syntax keyword shenSyntax input
syntax keyword shenSyntax input+
syntax keyword shenFunc integer?
syntax keyword shenSyntax intern
syntax keyword shenFunc intersection
syntax keyword shenFunc it
syntax keyword shenSyntax lambda
syntax keyword shenFunc language
syntax keyword shenFunc length
syntax keyword shenSyntax let
syntax keyword shenFunc limit
syntax keyword shenSyntax lineread
syntax keyword shenFunc load
syntax keyword shenSyntax macroexpand
syntax keyword shenFunc map
syntax keyword shenFunc mapcan
syntax keyword shenSyntax make-string
syntax keyword shenFunc maxinferences
syntax keyword shenFunc nl
syntax keyword shenFunc not
syntax keyword shenFunc nth
syntax keyword shenFunc number?
syntax keyword shenFunc n->string
syntax keyword shenFunc occurrences
syntax keyword shenFunc occurs-check
syntax keyword shenSyntax open
syntax keyword shenFunc or
syntax keyword shenFunc os
syntax keyword shenSyntax output
syntax keyword shenSyntax package
syntax keyword shenFunc package-exists?
syntax keyword shenFunc pos
syntax keyword shenFunc pr
syntax keyword shenFunc preclude
syntax keyword shenFunc preclude-all-but
syntax keyword shenFunc print
syntax keyword shenFunc profile
syntax keyword shenFunc profile-results
syntax keyword shenSyntax ps
syntax keyword shenSyntax put
syntax keyword shenFunc read
syntax keyword shenFunc read-byte
syntax keyword shenFunc read-file
syntax keyword shenFunc read-file-as-bytelist
syntax keyword shenFunc read-file-as-string
syntax keyword shenFunc read-from-string
syntax keyword shenFunc remove
syntax keyword shenFunc require
syntax keyword shenFunc reverse
syntax keyword shenFunc simple-error
syntax keyword shenFunc snd
syntax keyword shenFunc specialise
syntax keyword shenFunc spy
syntax keyword shenFunc step
syntax keyword shenFunc stinput
syntax keyword shenFunc stoutput
syntax keyword shenFunc str
syntax keyword shenFunc string?
syntax keyword shenFunc string->n
syntax keyword shenSyntax subst
syntax keyword shenFunc sum
syntax keyword shenFunc symbol?
syntax keyword shenFunc systemf
syntax keyword shenFunc tail
syntax keyword shenFunc tc
syntax keyword shenFunc tc?
syntax keyword shenFunc thaw
syntax keyword shenSyntax time
syntax keyword shenSyntax tl
syntax keyword shenFunc tlstr
syntax keyword shenFunc tlv
syntax keyword shenFunc track
syntax keyword shenFunc trap-error
syntax keyword shenFunc tuple?
syntax keyword shenSyntax type
syntax keyword shenFunc undefmacro
syntax keyword shenFunc union
syntax keyword shenFunc unprofile
syntax keyword shenFunc unspecialise
syntax keyword shenFunc untrack
syntax keyword shenSyntax value
syntax keyword shenFunc variable?
syntax keyword shenFunc version
syntax keyword shenFunc vector
syntax keyword shenFunc vector?
syntax keyword shenFunc vector->
syntax keyword shenFunc <-vector
syntax keyword shenFunc write-byte
syntax keyword shenFunc write-to-file
syntax keyword shenFunc y-or-n?
syntax keyword shenSyntax @p
syntax keyword shenSyntax @s
syntax keyword shenSyntax @v
syntax keyword shenSyntax $
syntax keyword shenFunc +
syntax keyword shenFunc -
syntax keyword shenFunc *
syntax keyword shenFunc /
syntax keyword shenSyntax /.
syntax keyword shenFunc >
syntax keyword shenFunc <
syntax keyword shenFunc =
syntax keyword shenFunc ==
syntax keyword shenFunc >=
syntax keyword shenFunc <=

" Shen-YACC
syntax keyword shenYACCSyntax defcc
syntax keyword shenYACCSyntax compile

" Shen special characters
syntax keyword shenSpecial :=
syntax keyword shenSpecial ;
syntax keyword shenSpecial ->

command -nargs=+ HiLink hi def link <args>

HiLink shenSyntax Statement
HiLink shenYACCSyntax Statement
HiLink shenFunc Function
HiLink shenSpecial Special

delcommand HiLink

let b:current_syntax = "shen"
