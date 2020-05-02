call plug#begin('~/.config/nvim/bundle')
" vim for go
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " quam ly file
Plug 'morhetz/gruvbox'  " Theme gruvbox 
Plug 'vim-airline/vim-airline' " Show line footer
Plug 'vim-airline/vim-airline-themes' " theme of vim-airline
Plug 'airblade/vim-gitgutter' 	" Hiển thị trạng thái thay đổi git theo từng dòng
Plug 'kien/ctrlp.vim' " Tìm kiếm file trên trong project hiện tại
Plug 'tpope/vim-surround' " Tạo , sửa , xóa khý tự bao ngoài của một cụm text <div></div>
Plug 'easymotion/vim-easymotion'	" Di chuyển nhanh tới vị trí tìm kiếm
Plug 'junegunn/vim-easy-align' " Căn vị trí ký tự = thẳng hàng 
call plug#end()
