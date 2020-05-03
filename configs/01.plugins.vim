call plug#begin('~/.config/nvim/bundle')
" vim for go
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " quam ly file
Plug 'morhetz/gruvbox'  " Theme gruvbox 
Plug 'vim-airline/vim-airline' " Show line footer
Plug 'vim-airline/vim-airline-themes' " theme of vim-airline
Plug 'jiangmiao/auto-pairs' " Tạo tag đóng tự động: { => {}
Plug 'airblade/vim-gitgutter' 	" Hiển thị trạng thái thay đổi git theo từng dòng
Plug 'kien/ctrlp.vim' " Tìm kiếm file trên trong project hiện tại
Plug 'tpope/vim-surround' " Tạo , sửa , xóa khý tự bao ngoài của một cụm text <div></div>
Plug 'easymotion/vim-easymotion'	" Di chuyển nhanh tới vị trí tìm kiếm
Plug 'junegunn/vim-easy-align' " Căn vị trí ký tự = thẳng hàng 
Plug 'alvan/vim-closetag' " Đóng tạo <Tag> nhanh 
Plug 'terryma/vim-multiple-cursors' " Dùng nhiều con trỏ

"typescript
Plug 'ianks/vim-tsx'
Plug 'herringtondarkholme/yats.vim'

" Setting test
Plug 'Shougo/neoinclude.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'galooshi/vim-import-js'
Plug 'Shougo/denite.nvim'
"snippets
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
"fzf
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'dyng/ctrlsf.vim'
call plug#end()
