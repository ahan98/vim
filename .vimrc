""""""""""""""""""""""""
"	Editor Settings
""""""""""""""""""""""""

let mapleader=";"

set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set number

" word wrap
set wrap linebreak nolist

" set max width to 100
autocmd VimResized * if (&columns > 100) | set columns=100 | endif

" enable for base16 script
"set shell=bash\ -i
"if filereadable(expand("~/.vimrc_background"))
"  let base16colorspace=256
"  source ~/.vimrc_background
"endif

""""""""""""""""""""""""
"	Plugins
""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

	Plug 'jiangmiao/auto-pairs'
	Plug 'junegunn/goyo.vim'
	Plug 'vimwiki/vimwiki'
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
	Plug 'scrooloose/nerdcommenter'
	Plug 'pseewald/vim-anyfold'

	" themes
	Plug 'junegunn/seoul256.vim'
	Plug 'danielwe/base16-vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

call plug#end()

" => AutoPair
au FileType markdown let b:AutoPairs = AutoPairsDefine({'$':'$', '**':'**', '_':'_'})
let g:AutoPairsMapCh = 0

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
let g:instant_markdown_autostart = 0

" => Airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='zenburn'
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
"	Key Mappings
""""""""""""""""""""""""

" start/end of line
noremap <C-e> $
noremap <C-a> 0
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

" delete in insert mode
inoremap <C-d> <Del>

" navigation
noremap k gk
noremap j gj
noremap 0 g0
noremap $ g$

" rebind meta key for auto-pair plugin commands
set <M-e>=e

" buffer navigation
map <leader>n :bn<cr>
map <leader>p :bp<cr>
map <leader>d :bd<cr>

" folding
nnoremap <Space> za

""""""""""""""""""""""""
"	Color Schemes
""""""""""""""""""""""""

set termguicolors

" dark theme 233 (darkest) ~ 239 (lightest)
"colo seoul256
"let g:seoul256_background = 237

" light theme 252 (darkest) ~ 256 (lightest)
colo seoul256-light
let g:seoul256_background = 253
