set wildmode=list:longest,list:full

" --------------------------------------------------
" Multi-purpose tab key - indent at start of line
" else, pop up completion
" --------------------------------------------------
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
      return "\<tab>"
    else
      return "\<c-n>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-p>

call dein#add('Shougo/deoplete.nvim', {'do': 'UpdateRemotePlugins'})

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
      \ 'smart_case': v:true,
      \ })
set completeopt=longest,menuone

