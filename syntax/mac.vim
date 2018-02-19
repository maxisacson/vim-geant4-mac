if exists("b:current_syntax")
    finish
end

syn match macSlash "/"
syn match macNumber "\(\d\+\.\?\)\|\(\.\d\+\)"
syn region macString start=/"/ skip=/\\\\\|\\"/ end=/"/ oneline
syn keyword macBoolean true false
syn match macCommand "^\s*\(/[a-zA-Z0-9-]*\)\+" contains=macSlash
syn match macComment "\s*#.*"

hi def link macSlash Operator
hi def link macBoolean Boolean
hi def link macNumber Number
hi def link macString String
hi def link macCommand Function
hi def link macComment Comment

let b:current_syntax = "mac"
