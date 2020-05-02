" NERDTree
map <C-b> :NERDTreeToggle<CR>
map <C-i> :NERDTreeFind<CR>
let g:NERDTreePatternMatchHighlightFullName = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDTreeChDirMode = 2
"let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.db', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeShowBookmarks=2

" Theme
syntax enable
set background=dark
highlight Normal ctermbg=None
colorscheme gruvbox
let g:airline_theme = 'gruvbox'
set termguicolors

" CtrlP Tìm kiếm theo tên file
let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/](node_modules|build|public|lib|dist)|(\.(git|svn))$',
	\ 'file': 'tags\|tags.lock\|tags.temp'
	\ }
" easymotion
nmap <silent> gw <Plug>(easymotion-overwin-f2) 
let g:EasyMotion_smartcase = 1

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
