" Document : http://vimdoc.sourceforge.net/htmldoc/options.html
let mapleader = "\<Space>" " Prefix key dung để trigger các function hay event

let g:python_host_prog = expand('/usr/bin/python2.7')
let g:python3_host_prog = expand('/usr/bin/python3.6')

filetype plugin on
filetype plugin indent on " Thụt lề
" Tự động indent
set autoindent
set si " smart indent

"Auto remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

" Set scroll line => Scoll xuống 10 dòng <CTR+D>
autocmd BufEnter * :set scroll=10

syntax on

set encoding=UTF-8

" Enable mouse trong context của neovim
if has('mouse')
  set mouse=a
endif

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

" tự động cập nhật khi file thay đổi (Bởi chương trình khác)
set autoread
set autowrite

" keyword: zs, ze, zh, zl
set nowrap      " This option can change how text displayed. Đoạn text trên 1 dòng bị tràn không xuống dòng

set visualbell  " Use visual bell instead of beeping
set noerrorbells " No Ring the bell for error message

" http://vimdoc.sourceforge.net/htmldoc/map.html
"
"imap: Map keyboard on Insert Mode
"inoremap jj <ESC>
"inoremap ww <ESC>:w<cr>
"inoremap <silent> <c-l> <ESC>la

"map
nmap <silent> ff <Plug>(easymotion-overwin-f2)
nmap <silent> fl <Plug>(easymotion-overwin-line)
nmap <leader>rn <Plug>(coc-rename)

" normap
noremap <ESC><ESC> :nohlsearch<CR>
noremap <silent> K :call <SID>show_documentation()<CR>

noremap <silent> <C-h> :wincmd h<CR>
noremap <silent> <C-j> :wincmd j<CR>
noremap <silent> <C-k> :wincmd k<CR>
noremap <silent> <C-l> :wincmd l<CR>

" Duplicate everything selected
vmap D y'>p

" copy/pase
vnoremap < <gv
vnoremap > >gv

"set clipboard+=unnamedplus " Copy/pass clipboard
set clipboard=unnamedplus
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"ctrslf
nmap <leader>s <Plug>CtrlSFPrompt
vmap <leader>sw <Plug>CtrlSFVwordPath
"terminal mapping
tnoremap <Esc> <C-\><C-n>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" Setting phím Tab để cách dòng
nnoremap <S-Tab> <<
nnoremap <Tab> >>
inoremap <S-Tab> <C-d>

" Nhấn phím Tab để mở gợi ý
inoremap <silent><expr><Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <silent><expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
