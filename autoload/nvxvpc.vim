" NVX VIM PRETTY COMMENTS



let s:standard = {
\		'type':      'default',
\		'align':     'center',
\		'fillright': 1,
\		'width':     78,
\		'filler':    '~',
\		'beg':       '//',
\		'end':       '',
\		'margin':    1,
\		'padding':   2,
\		'bound':     1,
\		'leveled':   0,
\		'levelstep': 4
\	}

if &textwidth > 0
	let s:standard.width = &textwidth
endif



fun! nvxvpc#InsertComment(...)
	if a:0 ==# 1
		let l:sets = a:1
	elseif a:0 ==# 0
		let l:sets = s:standard
	else
		throw "Invalid count of argument"
	endif

	let l:line = line('.')
	let l:text = getline('.')
	let l:com  = <SID>GenerateComment(l:sets, l:text)
	call append(l:line, l:com)
	normal! dd
endfun



fun! nvxvpc#SetOption(key, value)
	let s:standard[a:key] = a:value
endfun



fun s:GenerateComment(sets, text)
	let l:beg  = a:sets.beg
	let l:beg .= repeat(' ', a:sets.margin)

	let l:end = ''
	if len(a:sets.end)
		let l:end .= repeat(' ', a:sets.margin)
		let l:end .= a:sets.end
	endif

	let l:cnt = ''
	if a:sets.align ==# 'left'
		let l:cnt .= repeat(a:sets.filler, a:sets.padding)
		let l:cnt .= repeat(' ', a:sets.bound)
		let l:cnt .= a:text
		let l:cnt .= repeat(' ', a:sets.bound)
		let l:len  = a:sets.width - len(l:beg) - len(l:end) - len(l:cnt)
		let l:cnt .= repeat(a:sets.filler, l:len)
	elseif a:sets.align ==# 'right'
		let l:cnt = repeat(a:sets.filler, a:sets.padding) . l:cnt
		let l:cnt = repeat(' ', a:sets.bound) . l:cnt
		let l:cnt = a:text . l:cnt
		let l:cnt = repeat(' ', a:sets.bound) . l:cnt
		let l:len = a:sets.width - len(l:beg) - len(l:end) - len(l:cnt)
		let l:cnt = repeat(a:sets.filler, l:len) . l:cnt
	elseif a:sets.align ==# 'center'
		let l:cnt .= repeat(' ', a:sets.bound)
		let l:cnt .= a:text
		let l:cnt .= repeat(' ', a:sets.bound)
		let l:len  = a:sets.width - len(l:beg) - len(l:end) - len(l:cnt)
		let l:cnt  = repeat(a:sets.filler, l:len/2) . l:cnt .
		           \ repeat(a:sets.filler, l:len - l:len/2)
	else
		throw 'Unknown alignement: ' . a:sets.align
	endif

	return l:beg . l:cnt . l:end
endfun



" END
