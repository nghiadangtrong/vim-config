" Copy/pase 
" Linux: sudo apt-get install xclip
" MacOS: pdcopy
function! ClipboardYark() 
  call system('xclip -i', @@)
endfunction

function! ClipboardPase() 
  let @@=system('xclip -o')
endfunction
