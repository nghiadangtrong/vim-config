
inoremap <silent><expr> <c-space> coc#refresh()

autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
