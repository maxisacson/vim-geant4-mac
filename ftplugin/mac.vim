if exists("b:did_ftplugin")
    finish
end
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

let b:undo_ftplugin = "setl com< cms< fo<"

setl comments=:# commentstring=#\ %s formatoptions+=ro

let &cpo = s:cpo_save
unlet s:cpo_save
