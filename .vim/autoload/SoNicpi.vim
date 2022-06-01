function! SonicPiAUTO()
	let words = [ 'live_loop' , 'loop' , 'live_loop do' , 'end' ]
	call complete(col('.'), words)
	return ''
endfunction

inoremap <C-x>m <C-r>=SonicPiAUTO()<CR>

