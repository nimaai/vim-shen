# vim-shen

Syntax highlighting plugin for http://shenlanguage.org. Mainly made for and tested on vim version 8. 
**Work in progress.**

Installation
------------
For example with [Vundle.vim] (https://github.com/VundleVim/Vundle.vim):
```
Plugin 'nimaai/vim-shen'
```
or with no specific plugin manager installed by placing the files in their respective locations.

Syntax highlighting
-------------------
All the keywords defined in [Shen's system functions] (http://www.shenlanguage.org/learn-shen/system.pdf#system-functions) are highlighted, as well as `if`, `let`, `cases` and Shen-YACC's `defcc` and `compile`.

Apart from that, syntax highlighting primarily focusses on tokens and grammar special to Shen. Number, Strings, etc. are not highlighted, but:
* function definition: `->`, `<-`, `where`
* all function and local variables which begin with uppercase character
* list construction operator: `|`
* Shen-YACC: `:=`, `;`, `<!>`, `<e>`, `<end>` and all user defined `<.*>`
* more to come, like data type definitions, etc.

are.

Indentation
-----------
Lisp typical indentation for `let` and `if` has been disabled. Thus, they indent like any other function call:
```
(let Var1 1
     Var2 2
     (+ Var1 Var2))
```
```
(if test
    true
    false)
```

Known problems
--------------
Tuple, string and vector constructors `@p`, `@s`, `@v` do not highlight as they should. I suspect that `@` character has a special meaning in regards to the vimscript syntax...

Recommendations
---------------
* [Paredit] (https://github.com/kovisoft/paredit) has support for Shen.
* [Vim-Slime] (https://github.com/jpalardy/vim-slime) for interactive development Vim + REPL.

Thanks
------
[Mark Tarver] (http://marktarver.com/) (creator of Shen)
