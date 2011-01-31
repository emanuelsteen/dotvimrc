" Syntax highlight
syntax on
colorscheme default
set background=dark

" Tab width
set tabstop=4
set shiftwidth=4
set softtabstop=0
set noexpandtab

" Useful settings
set nocompatible
set showmatch
set ruler
set showcmd
set incsearch
set hlsearch

" Formatting
set autoindent
set smartindent
inoremap # X#

" Mouse
set mouse=a

" tags
set tags+=/usr/include/tags
set tags+=/home/emst/src/ecode3/trunk/tags

" Line number
set number

" Python wants spaces instead of tabs
autocmd FileType python set expandtab

" Mark lines longer than 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.*/

" Windows specific
"set nobackup
"set nowritebackup
"set noswapfile
"behave xterm

