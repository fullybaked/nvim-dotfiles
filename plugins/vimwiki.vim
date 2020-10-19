
call dein#add('vimwiki/vimwiki')


nnoremap <Leader>x :VimwikiToggleListItem<cr>

nnoremap <Leader>wi :let z="[[index\|Back]]"\|put=z<cr>
nnoremap <Leader>wc :let z="- [ ] "\|put=z<cr>


