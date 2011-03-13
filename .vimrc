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

" Improved tab completion for files and buffers
set wildmenu
set wildmode=list:longest

" Python wants spaces instead of tabs
autocmd FileType python set expandtab

" Mark lines longer than 80 characters
" Use colorcolumn if the feature exists, available since VIM 7.3.
if exists("+colorcolumn")
highlight ColorColumn ctermbg=grey ctermfg=black
set colorcolumn=80
else
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.*/
endif

" Match and highlight trailing whitespaces at end of line
highlight BadWhitespace ctermbg=red
match BadWhitespace /\s\+$/

" Windows specific
"set nobackup
"set nowritebackup
"set noswapfile
"behave xterm

