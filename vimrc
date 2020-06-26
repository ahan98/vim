set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number relativenumber

filetype plugin on

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" plasticboy markdown
" magit

call plug#end()

set termguicolors
set background=dark
"let g:gruvbox_material_background = 'soft'
colo gruvbox

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"let g:airline_theme='base16'

let mapleader = " "

nnoremap <C-s> :update<cr>
inoremap <C-s> <Esc>:update<cr>gi
nmap <leader>m <Plug>MarkdownPreviewToggle
