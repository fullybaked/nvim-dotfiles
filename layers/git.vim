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
nnoremap <silent> <Leader>gp :Git push -u<CR>
nnoremap <silent> <Leader>gf :Git push -u --force<CR>
nnoremap <silent> <Leader>gb :GBranches<cr>
nnoremap <silent> <Leader>gr :RebaseSquash<cr>


" Assumes the gh cli tool is installed
" https://github.com/cli/cli
"
command! OpenPR silent !gh pr view --web
nnoremap <silent> <Leader>go :OpenPR<cr>

" Assumes you have setup the following as a git alias in $HOME/.gitconfig
" [prlog = "!f() { git log ${1:-develop}..HEAD --reverse --no-merges --pretty='---%n%n**%s** (%h)%n%n%b'; }; f"]
command! InsertPrlog read !git prlog
command! CopyPrlog !git prlog | pbcopy
nnoremap <silent> <Leader>gli :InsertPrlog<cr>
nnoremap <silent> <Leader>glc :CopyPrlog<cr>

" vim:ft=vim
