call pathogen#infect()

syntax enable
filetype plugin indent on

set nocompatible	" Compatibility with vi

set autoindent
set ic
set hls
set incsearch
set nowrap
set mouse=a
set autoread
set autowrite
set hidden
set cursorline
set autochdir

augroup ruby
	autocmd BufReadPre,FileReadPre *.rb set tabstop=2
	autocmd BufReadPre,FileReadPre *.rb set expandtab
	autocmd BufReadPre,FileReadPre *.rb set colorcolumn=108
	autocmd BufReadPre,FileReadPre *.rb set list
	autocmd BufReadPre,FileReadPre *.rb set nu
	autocmd BufReadPre,FileReadPre *.rb set shiftwidth=2
augroup END

colorscheme twilight
hi SpecialKey ctermfg=darkgray
hi NonText ctermfg=darkgray
set listchars=eol:¶,tab:»—,trail:·,extends:>,precedes:< 

map <ESC><ESC> :let @/ = ""<CR>
map <C-Tab> :bNext<CR>
map <C-d> Yp
map <C-s> :w<CR>

set directory=~/.vimswaps,.,/tmp

autocmd Syntax * syn match CamelCase "\(\<\|_\)\%(\u\l*\)\{2,}\(\>\|_\)\|\<\%(\l\l*\)\%(\u\l*\)\{1,}\>" transparent containedin=.*Comment.*,.*String.*,VimwikiLink contains=@NoSpell contained
set spl=en spell
