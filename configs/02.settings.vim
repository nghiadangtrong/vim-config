" Document : http://vimdoc.sourceforge.net/htmldoc/options.html
let mapleader = "\<Space>" " Prefix key dung để trigger các function hay event 
filetype plugin on
filetype plugin indent on " Thụt lề

autocmd BufEnter * :set scroll=10 " Set scroll line => Scoll xuống 10 dòng <CTR+D>
syntax on

set encoding=UTF-8
set mouse=a	" Enable mouse trong context của neovim 

set incsearch
set hlsearch 	" Hight light text khi search

set tabstop=2	" Space mỗi lần tab 
set softtabstop=0
set shiftwidth=2
set expandtab   " Use the appropriate number of spaces insert a Tab
set lazyredraw  " The screen will not be redrawn while executin macros

set number   " show line
set relativenumber " hiển thị vị trí các dòng so với dòng hiện tại
set ignorecase " Ignore case in search patterns.
set smartcase 	" Override the 'ignorecase' option if the search pattern contains uppercase characters
set nobackup    " Make a nobackup before overwriting a file
set noswapfile  " no use a swapfile for the buffer 

" keyword: zs, ze, zh, zl
set nowrap      " This option can change how text displayed. Đoạn text trên 1 dòng bị tràn không xuống dòng 

set visualbell  " Use visual bell instead of beeping
set noerrorbells " No Ring the bell for error message

" http://vimdoc.sourceforge.net/htmldoc/map.html
"
"imap: Map keyboard on Insert Mode
inoremap jj <ESC>
inoremap ww <ESC>:w<cr>
inoremap <silent> <c-l> <ESC>la

"map
noremap <ESC><ESC> :nohlsearch<CR>
noremap <silent> K :call <SID>show_documentation()<CR>

noremap <silent> <C-h> :wincmd h<CR>
noremap <silent> <C-j> :wincmd j<CR>
noremap <silent> <C-k> :wincmd k<CR>
noremap <silent> <C-l> :wincmd l<CR>

" copy/pase
vnoremap < <gv
vnoremap > >gv
"vnoremap <silent> y y:call ClipboardYark()<cr>
"vnoremap <silent> d d:call ClipboardYark()<cr>
"vnoremap <silent> p :call ClipboardPase()<cr>p
set clipboard+=unnamedplus " Copy/pass clipboard

