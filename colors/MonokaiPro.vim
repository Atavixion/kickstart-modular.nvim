" Colorscheme generated by https://github.com/arcticlimer/djanho
highlight clear

function s:highlight(group, bg, fg, style)
  let gui = a:style == '' ? '' : 'gui=' . a:style
  let fg = a:fg == '' ? '' : 'guifg=' . a:fg
  let bg = a:bg == '' ? '' : 'guibg=' . a:bg
  exec 'hi ' . a:group . ' ' . bg . ' ' . fg  . ' ' . gui
endfunction

let s:Color0 = '#72696a'
let s:Color1 = '#a8a9eb'
let s:Color4 = '#fd6883'
let s:Color5 = '#f9cc6c'
let s:Color3 = '#85dacc'
let s:Color8 = '#2c2525'
let s:Color10 = '#402b2e'
let s:Color2 = '#adda78'
let s:Color6 = '#fff1f3'
let s:Color12 = '#5b5353'
let s:Color7 = '#211c1c'
let s:Color11 = '#423a3a'
let s:Color9 = '#38362d'
let s:Color13 = '#948a8b'

call s:highlight('Comment', '', s:Color0, 'italic')
call s:highlight('Constant', '', s:Color1, '')
call s:highlight('Number', '', s:Color1, '')
call s:highlight('Function', '', s:Color2, '')
call s:highlight('Function', '', s:Color2, '')
call s:highlight('Type', '', s:Color3, '')
call s:highlight('Function', '', s:Color2, '')
call s:highlight('Error', '', s:Color4, '')
call s:highlight('Keyword', '', s:Color4, '')
call s:highlight('Conditional', '', s:Color4, '')
call s:highlight('Repeat', '', s:Color4, '')
call s:highlight('Operator', '', s:Color4, '')
call s:highlight('Type', '', s:Color4, '')
call s:highlight('String', '', s:Color5, '')
call s:highlight('Identifier', '', s:Color6, '')
call s:highlight('StatusLine', s:Color0, s:Color7, '')
call s:highlight('WildMenu', s:Color8, s:Color6, '')
call s:highlight('Pmenu', s:Color8, s:Color6, '')
call s:highlight('PmenuSel', s:Color6, s:Color8, '')
call s:highlight('PmenuThumb', s:Color8, s:Color6, '')
call s:highlight('DiffAdd', s:Color9, '', '')
call s:highlight('DiffDelete', s:Color10, '', '')
call s:highlight('Normal', s:Color8, s:Color6, '')
call s:highlight('Visual', s:Color10, '', '')
call s:highlight('CursorLine', s:Color11, '', '')
call s:highlight('ColorColumn', s:Color11, '', '')
call s:highlight('SignColumn', s:Color8, '', '')
call s:highlight('LineNr', '', s:Color12, '')
call s:highlight('TabLine', s:Color8, s:Color13, '')
call s:highlight('TabLineSel', s:Color5, s:Color8, '')
call s:highlight('TabLineFill', s:Color8, s:Color13, '')
call s:highlight('TSPunctDelimiter', '', s:Color6, '')

" Window split lines
call s:highlight('VertSplit', '', s:Color0, '')
call s:highlight('HorizSplit', '', s:Color0, '')

" GitSigns
call s:highlight('GitSignsAdd', '', s:Color2, '')
call s:highlight('GitSignsChange', '', s:Color5, 'bold')
call s:highlight('GitSignsDelete', '', s:Color4, 'bold')

" Neo-tree
call s:highlight('NeoTreeDirectoryIcon', '', s:Color5, '')
call s:highlight('NeoTreeDirectoryName', '', s:Color5, '')
call s:highlight('NeoTreeSymbolicLinkTarget', '', s:Color1, '')
call s:highlight('NeoTreeRootName', '', s:Color5, '')
call s:highlight('NeoTreeFileNameOpened', '', s:Color5, '')

" LSP diagnostic
call s:highlight('DiagnosticFloatingError', s:Color4, '', '')
call s:highlight('DiagnosticFloatingWarn', s:Color5, '', '')
call s:highlight('DiagnosticFloatingInfo', s:Color13, '', '')
call s:highlight('DiagnosticFloatingHint', s:Color2, '', '')

highlight! link TSTagDelimiter Type
highlight! link NonText Comment
highlight! link TSOperator Operator
highlight! link TSProperty TSField
highlight! link TSTag MyTag
highlight! link Macro Function
highlight! link TSType Type
highlight! link Whitespace Comment
highlight! link TSRepeat Repeat
highlight! link TSConditional Conditional
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link TSParameterReference TSParameter
highlight! link TSConstant Constant
highlight! link TSNumber Number
highlight! link Folded Comment
highlight! link TSFloat Number
highlight! link TSLabel Type
highlight! link TSComment Comment
highlight! link TSFuncMacro Macro
highlight! link TelescopeNormal Normal
highlight! link TSNamespace TSType
highlight! link TSKeyword Keyword
highlight! link Operator Keyword
highlight! link Repeat Conditional
highlight! link TSConstBuiltin TSVariableBuiltin
highlight! link TSPunctBracket MyTag
highlight! link CursorLineNr Identifier
highlight! link TSField Constant
highlight! link TSString String
highlight! link TSParameter Constant
highlight! link Conditional Operator
highlight! link TSFunction Function
