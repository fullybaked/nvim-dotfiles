" --------------------------------------------------
" CTags & Tagbar
" Requires universal-ctags to be installed
" https://github.com/universal-ctags/homebrew-universal-ctags
" --------------------------------------------------

call dein#add('majutsushi/tagbar')
call dein#add('universal-ctags/ctags')
call dein#add('ludovicchabant/vim-gutentags')

let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1
let g:tagbar_show_linenumbers = 1

map <C-m> :TagbarToggle<CR>
