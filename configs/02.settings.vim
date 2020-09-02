" Document : http://vimdoc.sourceforge.net/htmldoc/options.html
let mapleader = "\<Space>" " Prefix key dung để trigger các function hay event

let g:python_host_prog = expand('/usr/bin/python2.7')
let g:python3_host_prog = expand('/usr/bin/python3.8')

filetype plugin on
filetype plugin indent on " Thụt lề

" Set scroll line => Scoll xuống 10 dòng <CTR+D>
autocmd BufEnter * :set scroll=10

syntax on
set encoding=UTF-8

" Enable mouse trong context của neovim
if has('mouse')
  set mouse=a
endif

set history=1000
set undolevels=1000

set incsearch
set hlsearch " Hight light text khi search

set number   " show line
set relativenumber " hiển thị vị trí các dòng so với dòng hiện tại
set ignorecase " Ignore case in search patterns.
set smartcase 	" Override the 'ignorecase' option if the search pattern contains uppercase characters

set tabstop=2 " Space mỗi lần tab
set softtabstop=0
set shiftwidth=2
set lazyredraw  " The screen will not be redrawn while executin macros
set nobackup    " Make a nobackup before overwriting a file
set noswapfile  " no use a swapfile for the buffer
" keyword: zs, ze, zh, zl
set nowrap      " This option can change how text displayed. Đoạn text trên 1 dòng bị tràn không xuống dòng

" Ký tự thụt lề
"set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set listchars=eol:¬,trail:~,space:·
set list
set expandtab   " Use the appropriate number of spaces insert a Tab

" tự động cập nhật khi file thay đổi (Bởi chương trình khác)
set autoread
set autowrite

set visualbell  " Use visual bell instead of beeping
set noerrorbells " No Ring the bell for error message

"imap: Map keyboard on Insert Mode
inoremap jj <ESC>
inoremap ww <ESC>:w<cr>
inoremap <silent> <c-l> <ESC>la
" Nhấn phím Tab để mở gợi ý
inoremap <silent><expr><Tab> pumvisible() ? "\<C-N>" : "\<Tab>"
inoremap <silent><expr><S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"

"nnoremap
nnoremap <C-/> <leader>c<leader>
nnoremap ; :

" normap
noremap <ESC><ESC> :nohlsearch<CR>
noremap <silent> <C-h> :wincmd h<CR>
noremap <silent> <C-j> :wincmd j<CR>
noremap <silent> <C-k> :wincmd k<CR>
noremap <silent> <C-l> :wincmd l<CR>

noremap <silent> <c-9> :bprevious<CR>
noremap <silent> <c-0> :bnext<CR>

noremap <silent> <leader>= :vertical resize +5<CR>
noremap <silent> <leader>- :vertical resize -5<CR>
noremap <silent> <leader>+ :resize +5<CR>
noremap <silent> <leader>_ :resize -5<CR>

" nmap
nmap <silent> ff <Plug>(easymotion-overwin-f2)
nmap <silent> fl <Plug>(easymotion-overwin-line)
nmap <leader>rn <Plug>(coc-rename)

" Duplicate everything selected
vmap D y'>p

" copy/pase
set clipboard+=unnamedplus
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"ctrslf
nmap <leader>s <Plug>CtrlSFPrompt
vmap <leader>sw <Plug>CtrlSFVwordPath

" allow backspacing over everything in insert mode
"set backspace=indent,eol,start
"set whichwrap+=<,>,h,l

" Setting phím Tab để cách dòng
nnoremap <S-Tab> <<
nnoremap <Tab> >>
inoremap <S-Tab> <C-d>

"Tự động indent
set autoindent
set si " smart indent

"Auto remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e

nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP
