" --------------------------------------------------
"  Git
" --------------------------------------------------
call dein#add('tpope/vim-fugitive')
call dein#add('airblade/vim-gitgutter')
call dein#add('stsewd/fzf-checkout.vim')
call dein#add('knsh14/vim-github-link')

autocmd FileType gitcommit set spell
autocmd BufEnter PULLREQ_EDITMSG setlocal filetype=gitcommit

command! RebaseSquash silent execute '2,$s/^pick/s/|silent! w!|2'

nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gp :Git push -u --force<CR>
nnoremap <silent> <Leader>gc :GCheckout<cr>
nnoremap <silent> <Leader>rb :RebaseSquash<cr>

" vim:ft=vim
