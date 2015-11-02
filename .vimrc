" Compatibility? Nuff said...
set nocompatible

" Syntax highlight
syntax on
let python_highlight_all = 1
colorscheme default
set background=dark
set t_Co=256

" Tab width
set tabstop=4
set shiftwidth=4
set softtabstop=0
set smarttab
set expandtab

" Useful GUI settings
set showmatch
set ruler
set showcmd
set cursorline

" Show line number
set number

" Highlight and instantly jump to matches during search
set incsearch
set hlsearch

" Always show status line
set laststatus=2

" Ignore case for searches unless it contains non-lowercase letters
set ignorecase
set smartcase

" Formatting
set autoindent
set smartindent

" Also indent comments
inoremap # X#

" Mouse
set mouse=a

" tags
set tags+=/usr/include/tags
set tags+=/home/emst/src/ecode3/trunk/tags

" Improved tab completion for files and buffers (bash style)
set wildmenu
set wildmode=list:longest

" When editing a Python file use spaces instead of tabs
"autocmd FileType python set expandtab

" Mark lines longer than 80 characters
" Use colorcolumn if the feature exists, available since VIM 7.3.
if exists("+colorcolumn")
highlight ColorColumn ctermbg=grey ctermfg=black
set colorcolumn=80
else
highlight OverLength ctermbg=red ctermfg=white
match OverLength /\%81v.*/
endif

set textwidth=0

" Match and highlight trailing whitespaces at end of line
highlight BadWhitespace ctermbg=red
autocmd BufWinEnter * match BadWhitespace /\s\+$/
autocmd InsertEnter * match BadWhitespace /\s\+$/
autocmd InsertLeave * match BadWhitespace /\s\+$/
"autocmd BufWinLeave * match BadWhitespace /\s\+$/

" Toogle showing unprintable characters with Ctrl-P
map <C-P> :set invlist<CR>

" Center screen on search
nmap n nzz
nmap N Nzz

" Keep context around current line
set scrolloff=10

" Don't wrap search
set nowrapscan

" Fold code
set foldmethod=syntax
autocmd FileType java set foldnestmax=2
autocmd FileType java set foldlevel=1
autocmd FileType c set foldnestmax=1
autocmd FileType cpp set foldnestmax=1
nmap <Space> za

" Windows specific
if has("win32")
    source $VIMRUNTIME/mswin.vim
    set nobackup
    set nowritebackup
    set noswapfile
    behave xterm
endif

