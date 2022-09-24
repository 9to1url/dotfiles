set ffs=unix,dos
set ff=unix
syntax enable
filetype plugin indent on
au filetype go inoremap <buffer> . .<C-x><C-o>

set nocompatible
filetype off
set encoding=utf-8

call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'

call plug#end()

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



" Rust Pmenu color
 """ Customize colors
func! s:my_colors_setup() abort
    " this is an example
    hi Pmenu guibg=#000000 gui=NONE
    hi PmenuSel guibg=#000000 gui=NONE
    hi PmenuSbar guibg=#000000
    hi PmenuThumb guibg=#000000
    hi CocRustTypeHint guibg=#000000 guifg=#257abf
endfunc

augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:my_colors_setup()
augroup END
