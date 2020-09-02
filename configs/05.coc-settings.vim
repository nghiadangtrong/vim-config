let g:coc_global_extensions = [
  \ 'coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-json',
  \ 'coc-git', 'coc-emoji', 'coc-webpack', 'coc-rls', 'coc-sql',
  \ 'coc-styled-components', 'coc-sh', 'coc-python', 'coc-html',
  \ 'coc-gitignore', 'coc-docker', 'coc-cssmodules'
\]
set updatetime=300
set shortmess+=c
set signcolumn=yes

inoremap <silent><expr> <c-space> coc#refresh()

" seting indent typescript
autocmd BufNewFile,BufRead *.tsx,*.jsx,*.ts set filetype=typescript.tsx

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
