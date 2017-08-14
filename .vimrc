" Automatische Einrückung (Globale Konfiguration)
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set smarttab

" UTF-8 als Default-Encoding
set enc=utf-8

" Ein Tab entspricht vier Leerzeichen (wie in PEP 8 definiert)
" Dies aber nur für python, damit es nicht mit anderen (ruby, c, Makefiles) kollidiert
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 omnifunc=pythoncomplete#Complete

" HTML
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" More syntax highlighting.
let python_highlight_all = 1

" Start python on F5
autocmd FileType python map <F5> :w<CR>:!python "%"<CR>

syntax on
set number
set nocompatible

" update shortcuts 
map <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :!clear;python %<CR>
nnoremap <silent> <F9> :!pylint %<CR>

" tabbing
tab all
map <Tab> :tabn<cr>
map <S-Tab> :tabp<cr>

" smart tabbing
let g:airline#extensions#tabline#enabled = 1

" enable solarized font
"set background=dark
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"colorscheme solarized

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

filetype plugin indent on
let @i="import ipdb; ipdb.set_trace()"
