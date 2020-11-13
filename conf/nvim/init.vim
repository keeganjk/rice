set number
set clipboard+=unnamedplus
set autoindent smartindent

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'guns/xterm-color-table.vim'
Plug 'keeganjk/onedark.vim'
Plug 'skammer/vim-css-color'

call plug#end()

let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:airline_theme='onedark'
colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
