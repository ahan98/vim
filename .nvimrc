""""""""""""""""""""""""
"   Editor Settings
""""""""""""""""""""""""

let mapleader=";"

set lazyredraw

set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
set number

" word wrap
set wrap linebreak nolist

" set max width to 100
autocmd VimResized * if (&columns > 100) | set columns=100 | endif

""""""""""""""""""""""""
"       Plugins
""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/goyo.vim'
    Plug 'vimwiki/vimwiki'
    "Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
    Plug 'scrooloose/nerdcommenter'
    Plug 'pseewald/vim-anyfold'

    " themes
    Plug 'junegunn/seoul256.vim'
    Plug 'chriskempson/base16-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()

" => base16-shell
if filereadable(expand("~/.vimrc_background"))
    source ~/.vimrc_background
endif
set termguicolors

" => AutoPair
au FileType markdown let b:AutoPairs = AutoPairsDefine({'$':'$', '**':'**', '_':'_'})

" => VimWiki
" prereqs
set nocompatible
filetype plugin on
syntax on
set noshowmode

" change default directory and file type
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

nmap <Leader>k <Plug>VimwikiDiaryPrevDay
nmap <Leader>j <Plug>VimwikiDiaryNextDay

" free up <C-d> for <Del> rebind
imap <C-p> <Plug>VimwikiDecreaseLvlSingleItem

" => MarkdownPreview
"let g:instant_markdown_autostart = 0

" => Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1

" => vim-anyfold
" prereq
filetype plugin indent on
autocmd Filetype * AnyFoldActivate

" enable comment folding
let g:anyfold_fold_comments = 1

" files are opened unfolded
set foldlevel=99

""""""""""""""""""""""""
"       Mappings
""""""""""""""""""""""""

" navigation
noremap k g<Up>
noremap j g<Down>
noremap 0 g0
noremap $ g$
imap <C-k> <Esc>ka
imap <C-j> <Esc>ja

" start/end of line
noremap <C-e> $
noremap <C-a> 0
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

" delete in insert mode
inoremap <C-d> <Del>

" buffer navigation
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>d :bd<cr>

" folding
nnoremap <Space> za

""""""""""""""""""""""""
"   Color Schemes
""""""""""""""""""""""""

" dark theme 233 (darkest) ~ 239 (lightest)
"colo seoul256
"let g:seoul256_background = 237

" light theme 252 (darkest) ~ 256 (lightest)
"colo seoul256-light
"let g:seoul256_background = 253
