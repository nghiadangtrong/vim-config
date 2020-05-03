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

" AUTO CLOSE TAGS
let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.js,*.vue'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.vue'
let g:closetag_filetypes = 'html,js,xhtml,phtml,jsx,tsx,vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx,js,vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

"FONT
let g:enable_italic_font = 1
let g:enable_bold_font = 1
"CLOSE BUFFER
let bclose_multiple = 0

"MULTI COSUR
let g:multi_cursor_select_all_word_key = '<c-a>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_exit_from_insert_mode=1

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"DEOPLETE
let g:deoplete#enable_at_startup = 1
