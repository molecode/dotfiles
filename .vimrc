" UTF-8 als Default-Encoding
set enc=utf-8

" Load pathogen
execute pathogen#infect()

" Airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = 'Ξ'
let g:airline_symbols.whitespace = 'Ξ'
set ttimeoutlen=10

" Automatische Einrückung (Globale Konfiguration)
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set smarttab
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set shiftround
set showmatch
set backspace=indent,eol,start
set autoindent
set copyindent

" Ein Tab entspricht vier Leerzeichen (wie in PEP 8 definiert)
" Dies aber nur für python, damit es nicht mit anderen (ruby, c, Makefiles) kollidiert
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 omnifunc=pythoncomplete#Complete


set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

" HTML
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" More syntax highlighting.
let python_highlight_all = 1

" Start python on F5
autocmd FileType python map <F5> :w<CR>:!python "%"<CR>

syntax on
set number
set nocompatible
set hidden
"Display long lines on multiple lines
"set nowrap
set ignorecase
set smartcase
set hlsearch
set incsearch

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

" vimwiki
let wiki_1 = {}
let wiki_1.path = '~/.vimwiki/privat/'

let wiki_2 = {}
let wiki_2.path = '~/.vimwiki/resmio/'

let g:vimwiki_list = [wiki_1, wiki_2]
