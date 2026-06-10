setlocal expandtab
setlocal shiftwidth=2
setlocal tabstop=2

setlocal foldmethod=expr
setlocal foldexpr=v:lua.vim.treesitter.foldexpr()
setlocal foldlevel=99	" folds available but open by default

" setlocal expandtab
"setlocal autoindent
"setlocal smarttab
"setlocal formatoptions=croql
