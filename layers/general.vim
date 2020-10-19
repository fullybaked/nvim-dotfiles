runtime macros/matchit.vim

" Surrounding characters (ludicrously useful)
call dein#add('tpope/vim-surround')

" Pairs of handy bracket mappings
call dein#add('tpope/vim-unimpaired')

" Repeat plugin actions (e.g., from vim-surround, vim-unimpaired)
call dein#add('tpope/vim-repeat')

" Automatically enter closing tokens (e.g., 'end' in Ruby)
call dein#add('tpope/vim-endwise')

" Auto close quote, parens, braces etc
call dein#add('raimondi/delimitmate')

" Easy line commenting
" `gc` on a visual selection or motion
" `gcc` for the current line only
call dein#add('tpope/vim-commentary')

" Sort motion bound to `gs` (sort values in <textobject>)
call dein#add('christoomey/vim-sort-motion')

" 3-in-1 word variants plugin - Abolish, Subvert, and coercion
call dein#add('tpope/vim-abolish')
