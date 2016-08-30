if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match kappaLineContinuation /\\\n/

syn region kappaCommentLine start="#" end="$" contains=kappaLineContinuation
syn region kappaComment start="/\*" end="\*/" contains=kappaComment,kappaLabel,kappaString

syn keyword kappaKeyword do set repeat until INF

syn match kappaDeclaration /%[a-zA-Z][-a-zA-Z0-9_+]*:/
syn match kappaPurturbation /$[a-zA-Z][-a-zA-Z0-9_+]*/
syn match kappaInternalState /\~[a-zA-Z][-a-zA-Z0-9_+]*/
syn match kappaExpr /\[[a-zA-Z][-a-zA-Z0-9_+]*\]/
syn match kappaInteger /-\?[0-9]\+/
syn match kappaReal /-\?\%(\%([0-9]\+\%(\.[0-9]*\)\?\|\.[0-9]\+\)[eE][-+]\?[0-9]\+\|\%([0-9]\+\.[0-9]*\|[0-9]*\.[0-9]\+\)\)/
syn match kappaLabel /'[^\n']\+'/
syn match kappaString /"[^\n']\+"/

syn match kappaOperator /&&\|||\|<->\|->\|<-\|:=\|<>\|[-:;@+*^<>=!?_]\|\/\*\@!/

hi def link kappaCommentLine Comment
hi def link kappaComment Comment
hi def link kappaKeyword Keyword
hi def link kappaDeclaration Keyword
hi def link kappaInternalState Constant
hi def link kappaPurturbation Keyword
hi def link kappaExpr Keyword
hi def link kappaLabel String
hi def link kappaString String
hi def link kappaInteger Number
hi def link kappaReal Number
hi def link kappaOperator Operator

syn sync minlines=200
syn sync maxlines=500

let b:current_syntax = "kappa"
