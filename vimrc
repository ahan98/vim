"""""""""""""""""""
" EDITOR SETTINGS "
"""""""""""""""""""
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number relativenumber
set cursorline
set cc=80
set formatoptions-=cro
set conceallevel=2

"""""""""""
" PLUGINS "
"""""""""""
filetype plugin on

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
" magit

call plug#end()

" Instant Markdown
let g:instant_markdown_mathjax = 1
let g:instant_markdown_slow = 1

" Plasticboy
let g:vim_markdown_math = 1

""""""""""
" THEMES "
""""""""""
set termguicolors

set background=dark
let g:gruvbox_italic=1
"let g:gruvbox_material_background = 'soft'
colo gruvbox

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"let g:airline_theme='base16'

""""""""""""""""
" KEY BINDINGS "
""""""""""""""""

let mapleader = " "

nnoremap <Tab> %
nnoremap <C-s> :update<cr>
inoremap <C-s> <Esc>:update<cr>gi

" delete all whitespace
noremap <leader><bs> :%s/\s\+$//g<cr><C-o>

" folding
nnoremap ff za
nnoremap fk zm
nnoremap fj zr
nnoremap Fk zM
nnoremap Fj zR
