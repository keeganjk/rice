set number
set clipboard+=unnamedplus
set autoindent smartindent

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'guns/xterm-color-table.vim'
Plug 'keeganjk/onedark.vim'
Plug 'skammer/vim-css-color'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:airline_theme='onedark'
let g:tex_indent_items=0
let g:tex_indent_and=0
let g:tex_indent_brace=0
colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
