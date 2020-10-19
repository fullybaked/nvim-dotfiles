" --------------------------------------------------
"  Fuzzy searching
" --------------------------------------------------
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) 
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.5, 'highlight': 'Comment' } }

map <C-f> :FZF<cr>
map <C-t>t :Tags<cr>
map <Leader>b :Buffers<cr>
map <Leader>f :Files<cr>
map <Leader>s :Ag 

map <Leader>wf :Files ~/vimwiki<cr>

function SearchWordUnderCursor()
  let g:search_term = expand("<cword>")
  call fzf#vim#ag(g:search_term)
endfunction
map <C-s> :call SearchWordUnderCursor()<cr>



