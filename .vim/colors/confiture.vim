if !has('gui_running')
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-flat.".&background.".sh"
  endif
endif

" GUI color definitions
let s:gui00 = "202D3A"
let s:gui01 = "34495E"
let s:gui02 = "7F8C8D"
let s:gui03 = "95A5A6"
let s:gui04 = "BDC3C7"
let s:gui05 = "e0e0e0"
let s:gui06 = "f5f5f5"
let s:gui07 = "ECF0F1"
let s:gui08 = "E74C3C"
let s:gui09 = "E67E22"
let s:gui0A = "F1C40F"
let s:gui0B = "2ECC71"
let s:gui0C = "1ABC9C"
let s:gui0D = "3498DB"
let s:gui0E = "9B59B6"
let s:gui0F = "be643c"

" Terminal color definitions
let s:cterm00 = "00"
let s:cterm01 = "01"
let s:cterm02 = "02"
let s:cterm03 = "03"
let s:cterm04 = "04"
let s:cterm05 = "05"
let s:cterm06 = "06"
let s:cterm07 = "07"
let s:cterm08 = "08"
let s:cterm09 = "09"
let s:cterm10 = "00"
let s:cterm11 = "11"
let s:cterm12 = "12"
let s:cterm13 = "13"
let s:cterm14 = "14"
let s:cterm15 = "15"

" Theme setup
hi clear
syntax reset
let g:colors_name = "flat"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:gui08, "", s:cterm01, "", "")
call <sid>hi("Directory",     s:gui0D, "", s:cterm04, "", "")
call <sid>hi("ErrorMsg",      s:gui08, s:gui00, s:cterm01, s:cterm00, "")
call <sid>hi("Exception",     s:gui08, "", s:cterm01, "", "")
call <sid>hi("FoldColumn",    "", s:gui01, "", s:cterm10, "")
call <sid>hi("Folded",        s:gui03, s:gui01, s:cterm08, s:cterm10, "")
call <sid>hi("IncSearch",     s:gui01, s:gui09, s:cterm10, s:cterm09, "none")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:gui08, "", s:cterm01, "", "")
call <sid>hi("MatchParen",    s:gui00, s:gui03, s:cterm00, s:cterm08,  "")
call <sid>hi("ModeMsg",       s:gui0B, "", s:cterm08, "", "")
call <sid>hi("MoreMsg",       s:gui0B, "", s:cterm02, "", "")
call <sid>hi("Question",      s:gui0D, "", s:cterm04, "", "")
call <sid>hi("Search",        s:gui03, s:gui0A, s:cterm08, s:cterm03,  "")
call <sid>hi("SpecialKey",    s:gui03, "", s:cterm08, "", "")
call <sid>hi("TooLong",       s:gui08, "", s:cterm01, "", "")
call <sid>hi("Underlined",    s:gui08, "", s:cterm01, "", "")
call <sid>hi("Visual",        "", s:gui02, "", s:cterm11, "")
call <sid>hi("VisualNOS",     s:gui08, "", s:cterm01, "", "")
call <sid>hi("WarningMsg",    s:gui08, "", s:cterm01, "", "")
call <sid>hi("WildMenu",      s:gui08, "", s:cterm01, "", "")
call <sid>hi("Title",         s:gui0D, "", s:cterm04, "", "none")
call <sid>hi("Cursor",        s:gui00, s:gui05, s:cterm00, s:cterm07, "")
call <sid>hi("NonText",       s:gui03, "", s:cterm08, "", "")
call <sid>hi("Normal",        s:gui05, s:gui00, s:cterm07, s:cterm00, "")
call <sid>hi("LineNr",        s:gui03, s:gui01, s:cterm08, s:cterm10, "")
call <sid>hi("SignColumn",    s:gui03, s:gui01, s:cterm08, s:cterm10, "")
call <sid>hi("SpecialKey",    s:gui03, "", s:cterm08, "", "")
call <sid>hi("StatusLine",    s:gui04, s:gui02, s:cterm12, s:cterm11, "none")
call <sid>hi("StatusLineNC",  s:gui03, s:gui01, s:cterm08, s:cterm10, "none")
call <sid>hi("VertSplit",     s:gui02, s:gui02, s:cterm11, s:cterm11, "none")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:cterm10, "none")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:cterm10, "none")
call <sid>hi("CursorLine",    "", s:gui01, "", s:cterm08, "none")
call <sid>hi("CursorLineNr",  s:gui03, s:gui01, s:cterm00, s:cterm08, "")
call <sid>hi("PMenu",         s:gui04, s:gui01, s:cterm12, s:cterm10, "none")
call <sid>hi("PMenuSel",      s:gui01, s:gui04, s:cterm10, s:cterm12, "")
call <sid>hi("TabLine",       s:gui03, s:gui01, s:cterm08, s:cterm10, "none")
call <sid>hi("TabLineFill",   s:gui03, s:gui01, s:cterm08, s:cterm10, "none")
call <sid>hi("TabLineSel",    s:gui0B, s:gui01, s:cterm02, s:cterm10, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui09, "", s:cterm09, "", "")
call <sid>hi("Character",    s:gui08, "", s:cterm01, "", "")
call <sid>hi("Comment",      s:gui03, "", s:cterm08, "", "")
call <sid>hi("Conditional",  s:gui0E, "", s:cterm05, "", "")
call <sid>hi("Constant",     s:gui09, "", s:cterm09, "", "")
call <sid>hi("Define",       s:gui0E, "", s:cterm05, "", "none")
call <sid>hi("Delimiter",    s:gui0F, "", s:cterm14, "", "")
call <sid>hi("Float",        s:gui09, "", s:cterm09, "", "")
call <sid>hi("Function",     s:gui0D, "", s:cterm04, "", "")
call <sid>hi("Identifier",   s:gui08, "", s:cterm01, "", "none")
call <sid>hi("Include",      s:gui0D, "", s:cterm04, "", "")
call <sid>hi("Keyword",      s:gui0E, "", s:cterm05, "", "")
call <sid>hi("Label",        s:gui0A, "", s:cterm03, "", "")
call <sid>hi("Number",       s:gui09, "", s:cterm09, "", "")
call <sid>hi("Operator",     s:gui05, "", s:cterm07, "", "none")
call <sid>hi("PreProc",      s:gui0A, "", s:cterm03, "", "")
call <sid>hi("Repeat",       s:gui0A, "", s:cterm03, "", "")
call <sid>hi("Special",      s:gui0C, "", s:cterm06, "", "")
call <sid>hi("SpecialChar",  s:gui0F, "", s:cterm14, "", "")
call <sid>hi("Statement",    s:gui08, "", s:cterm01, "", "")
call <sid>hi("StorageClass", s:gui0A, "", s:cterm03, "", "")
call <sid>hi("String",       s:gui0B, "", s:cterm02, "", "")
call <sid>hi("Structure",    s:gui0E, "", s:cterm05, "", "")
call <sid>hi("Tag",          s:gui0A, "", s:cterm03, "", "")
call <sid>hi("Todo",         s:gui0A, s:gui01, s:cterm03, s:cterm10, "")
call <sid>hi("Type",         s:gui0A, "", s:cterm03, "", "none")
call <sid>hi("Typedef",      s:gui0A, "", s:cterm03, "", "")

" C highlighting
call <sid>hi("cOperator",   s:gui0C, "", s:cterm06, "", "")
call <sid>hi("cPreCondit",  s:gui0E, "", s:cterm05, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui05, "", s:cterm07, "", "")
call <sid>hi("cssClassName",   s:gui0E, "", s:cterm05, "", "")
call <sid>hi("cssColor",       s:gui0C, "", s:cterm06, "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:gui0B, s:gui01,  s:cterm02, s:cterm10, "")
call <sid>hi("DiffChange",   s:gui03, s:gui01,  s:cterm08, s:cterm10, "")
call <sid>hi("DiffDelete",   s:gui08, s:gui01,  s:cterm01, s:cterm10, "")
call <sid>hi("DiffText",     s:gui0D, s:gui01,  s:cterm04, s:cterm10, "")
call <sid>hi("DiffAdded",    s:gui0B, s:gui00,  s:cterm02, s:cterm00, "")
call <sid>hi("DiffFile",     s:gui08, s:gui00,  s:cterm01, s:cterm00, "")
call <sid>hi("DiffNewFile",  s:gui0B, s:gui00,  s:cterm02, s:cterm00, "")
call <sid>hi("DiffLine",     s:gui0D, s:gui00,  s:cterm04, s:cterm00, "")
call <sid>hi("DiffRemoved",  s:gui08, s:gui00,  s:cterm01, s:cterm00, "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:gui08, "", s:cterm01, "", "")
call <sid>hi("gitCommitSummary",   s:gui0B, "", s:cterm02, "", "")
  
" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui0B, s:gui01, s:cterm02, s:cterm10, "")
call <sid>hi("GitGutterChange",  s:gui0D, s:gui01, s:cterm04, s:cterm10, "")
call <sid>hi("GitGutterDelete",  s:gui08, s:gui01, s:cterm01, s:cterm10, "")
call <sid>hi("GitGutterChangeDelete",  s:gui0E, s:gui01, s:cterm05, s:cterm10, "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui0A, "", s:cterm03, "", "")
call <sid>hi("htmlItalic",  s:gui0E, "", s:cterm05, "", "")
call <sid>hi("htmlEndTag",  s:gui05, "", s:cterm07, "", "")
call <sid>hi("htmlTag",     s:gui05, "", s:cterm07, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui05, "", s:cterm07, "", "")
call <sid>hi("javaScriptBraces",  s:gui05, "", s:cterm07, "", "")
call <sid>hi("javaScriptNumber",  s:gui09, "", s:cterm09, "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:gui0B, "", s:cterm02, "", "")
call <sid>hi("markdownError",             s:gui05, s:gui00, s:cterm07, s:cterm00, "")
call <sid>hi("markdownCodeBlock",         s:gui0B, "", s:cterm02, "", "")
call <sid>hi("markdownHeadingDelimiter",  s:gui0D, "", s:cterm04, "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui0D, "", s:cterm04, "", "")
call <sid>hi("NERDTreeExecFile",  s:gui05, "", s:cterm07, "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui05, "", s:cterm07, "", "")
call <sid>hi("phpComparison",      s:gui05, "", s:cterm07, "", "")
call <sid>hi("phpParent",          s:gui05, "", s:cterm07, "", "")

" Python highlighting
call <sid>hi("pythonOperator",  s:gui0E, "", s:cterm05, "", "")
call <sid>hi("pythonRepeat",    s:gui0E, "", s:cterm05, "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui0D, "", s:cterm04, "", "")
call <sid>hi("rubyConstant",                s:gui0A, "", s:cterm03, "", "")
call <sid>hi("rubyInterpolation",           s:gui0B, "", s:cterm02, "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui0F, "", s:cterm14, "", "")
call <sid>hi("rubyRegexp",                  s:gui0C, "", s:cterm06, "", "")
call <sid>hi("rubySymbol",                  s:gui0B, "", s:cterm02, "", "")
call <sid>hi("rubyStringDelimiter",         s:gui0B, "", s:cterm02, "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:gui08, "", s:cterm01, "", "")
call <sid>hi("sassClassChar",  s:gui09, "", s:cterm09, "", "")
call <sid>hi("sassInclude",    s:gui0E, "", s:cterm05, "", "")
call <sid>hi("sassMixing",     s:gui0E, "", s:cterm05, "", "")
call <sid>hi("sassMixinName",  s:gui0D, "", s:cterm04, "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:gui0B, s:gui01, s:cterm02, s:cterm10, "")
call <sid>hi("SignifySignChange",  s:gui0D, s:gui01, s:cterm04, s:cterm10, "")
call <sid>hi("SignifySignDelete",  s:gui08, s:gui01, s:cterm01, s:cterm10, "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellLocal",   "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellCap",     "", s:gui00, "", s:cterm00, "undercurl")
call <sid>hi("SpellRare",    "", s:gui00, "", s:cterm00, "undercurl")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm10 s:cterm11 s:cterm08 s:cterm12 s:cterm07 s:cterm13 s:cterm15 s:cterm01 s:cterm09 s:cterm03 s:cterm02 s:cterm06 s:cterm04 s:cterm05 s:cterm14
