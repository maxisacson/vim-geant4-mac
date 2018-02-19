if exists("b:current_syntax")
    finish
end

syn match macComment "\s*#.*"
syn match macSlash "/"
syn match macNumber "[0-9.]\+"
syn region macString start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn keyword macBoolean true false

hi def link macComment Comment
hi def link macSlash Operator
hi def link macBoolean Boolean
hi def link macNumber Number
hi def link macString String

let b:current_syntax = "mac"
