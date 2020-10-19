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

call dein#add('davidhalter/jedi-vim')
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "left"

call dein#add('fisadev/vim-isort')

call dein#add('Glench/Vim-Jinja2-Syntax')
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

au FileType python :iabbr ipd import ipdb<cr>ipdb.set_trace()<esc>
" vim:ft=vim
