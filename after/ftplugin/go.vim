setlocal noexpandtab
setlocal shiftwidth=4
setlocal tabstop=4

setlocal spelloptions=camel

setlocal nowrap
setlocal textwidth=75

setlocal comments=s:/*,m:\ ,e:*/,://

setlocal foldmethod=syntax
setlocal formatoptions+=o
setlocal formatoptions+=r

setlocal noshowmode " must be set for g:go_echo_go_info to work correctly

iabbr <buffer> todo // TODO(mgaffney) <c-r>=strftime("%m/%Y")<cr>:
iabbr <buffer> note // NOTE(mgaffney):
iabbr <buffer> bug // BUG(mgaffney):

" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=● texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=╳ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⊗ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=Ⓢ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=ⓢ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=🛑 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=🚨 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=🚦 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=📍 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=📌 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⛔ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⏹ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⏸ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⭕ texthl=GoDebugBreakpoint
sign define godebugbreakpoint text=🔴 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⛔ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⛌ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⬣ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=🚫 texthl=GoDebugBreakpoint

" sign define godebugcurline    text== texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=→ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=↠ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇉ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇒ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇛ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇝ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇥ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇨ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇴ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇶ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇸ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇻ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇾ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⊳ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⋙ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⋗ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=☛ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=☞ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➔ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➙ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➜ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➤ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➠ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➡ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➪ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➲ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➽ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➾ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⟹ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⤃ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=► texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=▶ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⦒ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⦔ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⧴ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⮀ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⌦ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⥤ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⩥ texthl=GoDebugCurrent    linehl=GoDebugCurrent
sign define godebugcurline    text=⫸ texthl=GoDebugCurrent    linehl=GoDebugCurrent
