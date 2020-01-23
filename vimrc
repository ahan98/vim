set tabstop=4
set shiftwidth=4
set expandtab
set number
set backspace=indent,eol,start
set ignorecase
set wrap linebreak nolist

map <silent> <CR> :update<CR>
let mapleader = ";"

""""""""""""""""""""""""
"	Plugins
""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

    Plug 'pseewald/vim-anyfold'

    Plug 'lervag/vimtex'
        let g:tex_flavor='latex'
        let g:vimtex_quickfix_mode=0

    Plug 'sirver/ultisnips'
        let g:UltiSnipsExpandTrigger = '<tab>'
        let g:UltiSnipsJumpForwardTrigger = '<tab>'
        let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

    Plug 'KeitaNakamura/tex-conceal.vim'
        set conceallevel=2
        let g:tex_conceal='abdmg'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
        let g:airline#extensions#tabline#enabled = 1
        let g:airline_theme='base16_nord'
        let g:airline_powerline_fonts = 1

call plug#end()

autocmd Filetype * AnyFoldActivate

" enable comment folding
let g:anyfold_fold_comments = 1

" files are opened unfolded
set foldlevel=99

""""""""""""""""""""""""
"	Key Mappings
""""""""""""""""""""""""

" navigation
noremap <Up> gk
noremap <Down> gj
noremap 0 g0
noremap $ g$

" buffer navigation
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>d :bd<cr>

" folding
nnoremap <Space> za
