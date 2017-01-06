" Last change: 2002-04-23, Tino Reichardt

set nocompatible	" i hate standard vi
set ai			" always set autoindenting on
set hlsearch		" is okay
set bs=2		" allow backspacing over everything in insert mode
set ch=2		" make cmd-line two lines
set vb t_vb=		" no bell at all
set viminfo='20,\"50	" read/write a .viminfo file, don't store more than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set laststatus=2	" always my status !
set statusline=%<%f%m\ [%n%R%Y%W]%1*\ %\=%*[%03b/0x%02B]\ [%04o/0x%04O]\ [C:%02c\ L:%04l\ P:%P]
set path=include,../include,/opt/diet/include,.,/usr/include,/opt/gnome/include

"set fileencoding="utf-8,ucs-bom,default,latin1,cp850"
set fileencoding="utf-8"

" alle teilen sich EIN clipboard ;)
set clipboard=unnamedplus

set textwidth=78
set nowrap

" tt2
autocmd BufNewFile,BufRead *.tt2 setf tt2

" I love the colortabs :)
set list listchars=tab:»·,trail:·,precedes:…,extends:…,nbsp:‗

" keys.. achtung: manche keys schreiben nicht...
map <F2>  :w <RETURN>
map <F3>  :set paste <RETURN>
map <F4>  :set nopaste <RETURN>
map <F5>  :!clear && pdflatex % && evince `basename % .tex`.pdf<RETURN>

map <F6>  :%!xxd<CR>
map <ESC><F6> :%!xxd -r<CR>

map <F8>  :make<RETURN>
map <ESC><F8> :make again <RETURN>

map <F9>  :buffers <RETURN>
map <F10> :bd! <RETURN>
map <F11> :bprevious! <RETURN>
map <F12> :bnext! <RETURN>

"map K :!firefox http://social.msdn.microsoft.com/Search/en-us?query=<C-R><C-W><RETURN><RETURN>

" special maps
imap  <BS>
" imap ü ue
" imap ä ae
" imap ö oe
" imap Ü Ue
" imap Ö Oe
" imap Ä Ae
" imap ß ss

" milkys vimsyntax
syntax on
set background=dark

" für alle
hi Comment	guibg=black guifg=Brown		ctermfg=Brown
hi Constant	guibg=black guifg=Magenta	ctermfg=Magenta
hi Special	guibg=black guifg=LightRed	ctermfg=LightRed
hi Identifier	guibg=black guifg=White		ctermfg=White
hi Statement	guibg=black guifg=Yellow	ctermfg=Yellow
hi PreProc	guibg=black guifg=DarkRed	ctermfg=DarkRed
hi Type		guibg=black guifg=Cyan		ctermfg=Cyan
hi Ignore	guibg=black guifg=Black		ctermfg=Black
hi String	guibg=black guifg=DarkGreen	ctermfg=DarkGreen
hi Error	guibg=black guifg=White		ctermfg=White ctermbg=LightBlue
hi Todo		guibg=black guifg=Black		ctermfg=Black ctermbg=Yellow

" gvim
hi NonText	guibg=black guifg=NONE
hi Normal	guibg=black guifg=NONE
hi Cursor	guibg=black guifg=NONE

hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat		Statement
hi link Label		Statement
hi link Operator	Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment	Special
hi link Debug		Special

hi mailQuoted1		guibg=black guifg=DarkCyan	ctermfg=DarkCyan
hi mailQuoted2		guibg=black guifg=DarkMagenta	ctermfg=DarkMagenta
hi mailQuoted3		guibg=black guifg=DarkRed	ctermfg=DarkRed
hi mailQuoted4		guibg=black guifg=DarkGreen	ctermfg=DarkGreen
hi mailQuoted5		guibg=black guifg=LightBlue	ctermfg=LightBlue
hi mailQuoted6		guibg=black guifg=DarkCyan	ctermfg=DarkCyan
hi mailQuoted7		guibg=black guifg=DarkMagenta	ctermfg=DarkMagenta
hi mailQuoted8		guibg=black guifg=DarkRed	ctermfg=DarkRed
hi mailQuoted9		guibg=black guifg=DarkGreen	ctermfg=DarkGreen

hi User1		term=bold cterm=bold ctermfg=Grey   ctermbg=Blue
hi StatusLineNC		term=bold cterm=bold ctermfg=Grey   ctermbg=Blue
hi StatusLine		term=bold cterm=none ctermfg=White  ctermbg=Blue
