runtime macros/matchit.vim


call dein#add('mhinz/vim-startify')

set timeout
set timeoutlen=500
call dein#add('liuchengxu/vim-which-key')
nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>

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

" See https://www.youtube.com/watch?time_continue=1&v=kB2zSdVXT7k
" Reorder parameters/arguments/dicts etc 
" :SidewaysLeft and :SidewaysRight
call dein#add('AndrewRadev/sideways.vim')

" Split code to multi-line or return to single line
"   - gS to split a one-liner into multiple lines
"   - gJ (with the cursor on the first line of a block) to join a block into a single-line statement.
call dein#add('AndrewRadev/splitjoin.vim')

" Auto-rename of closing HTML/XML tags
call dein#add('AndrewRadev/tagalong.vim')

" Switch items - true -> false.  But also switches dict styles in supported langs
" E.g.
" Ruby from {:foo => "bar" } to {foo: "bar"}
" Elixir from ["one", "two", "three"] to ~w(one two three)
" Also does Git rebase keywords
" pick->fixup->reword->edit->squash-> etc
call dein#add('AndrewRadev/switch.vim')

" Adds a new verb bound to `gr` for "go-replace" which can be used with the normal motions
" Replaces the content/area of the motion with the default register
" Eg. griw
"
call dein#add('vim-scripts/ReplaceWithRegister')

call dein#add('easymotion/vim-easymotion')
