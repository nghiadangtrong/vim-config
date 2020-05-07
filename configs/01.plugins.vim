call plug#begin('~/.config/nvim/bundle')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " quam ly file
Plug 'morhetz/gruvbox'  " Theme gruvbox
Plug 'vim-airline/vim-airline' " Show line footer
Plug 'vim-airline/vim-airline-themes' " theme of vim-airline
Plug 'jiangmiao/auto-pairs' " Tạo tag đóng tự động: { => {}
Plug 'airblade/vim-gitgutter' 	" Hiển thị trạng thái thay đổi git theo từng dòng
Plug 'tpope/vim-surround' " Tạo , sửa , xóa khý tự bao ngoài của một cụm text <div></div>
Plug 'easymotion/vim-easymotion'	" Di chuyển nhanh tới vị trí tìm kiếm
Plug 'junegunn/vim-easy-align' " Căn vị trí ký tự = thẳng hàng
Plug 'alvan/vim-closetag' " Đóng tạo <Tag> nhanh
Plug 'terryma/vim-multiple-cursors' " Dùng nhiều con trỏ

" Setting test
Plug 'neoclide/coc.nvim', {'branch': 'release'} " gợi ý code
Plug 'Shougo/neoinclude.vim'
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
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Dùng coc.vim
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
"fzf
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'dyng/ctrlsf.vim'

"typescript
Plug 'ianks/vim-tsx'
Plug 'herringtondarkholme/yats.vim'

" search file name
Plug 'kien/ctrlp.vim' " Tìm kiếm file trên trong project hiện tại
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Tim kiem file
Plug 'benmills/vimux'

" Some Git stuff
Plug 'tpope/vim-fugitive'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" Language support things
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'ap/vim-css-color'

call plug#end()
