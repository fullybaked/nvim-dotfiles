" --------------------------------------------------
" Python setup
" --------------------------------------------------

" PEP8 checking
call dein#add('nvie/vim-flake8')

" Better autoindent
call dein#add('vim-scripts/indentpython.vim')

" Venv handling
call dein#add('jmcantrell/vim-virtualenv')
let g:virtualenv_directory = $PWD

" Python code formatting
"g:black_virtualenv
call dein#add('psf/black')
let g:black_skip_string_normalization = 1

" Add jedi completion support to Deoplete
call dein#add('deoplete-plugins/deoplete-jedi')

" Enable poetry support
call dein#add('petobens/poet-v')
let g:poetv_executables = ['poetry']
let g:poetv_auto_activate = 1


call dein#add('davidhalter/jedi-vim')
let g:jedi#completions_enabled = 0
let g:jedi#use_tabs_not_buffers = 1

nnoremap <silent> <Leader>o :call jedi#usages()<cr>

call dein#add('fisadev/vim-isort')

call dein#add('Glench/Vim-Jinja2-Syntax')
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja
" vim:ft=vim
